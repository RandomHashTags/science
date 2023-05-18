//
//  ScientificEnvironment.swift
//  
//
//  Created by Evan Anderson on 4/21/23.
//

import Foundation
import huge_numbers

// TODO: add a tick handler and tick listeners for dynamic manipulation
public final class ScientificEnvironment : Hashable, ObservableObject {
    
    public static func == (lhs: ScientificEnvironment, rhs: ScientificEnvironment) -> Bool {
        return lhs.uuid == rhs.uuid
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(uuid)
    }
    
    private let uuid:UUID
    
    public var fps:HugeInt {
        didSet {
            let fps_integer:UInt64 = fps.to_int()!
            let fps_float:HugeFloat = fps.to_float
            gravity_per_frame = gravity.value / fps_float
            timeline_nanoseconds = 1_000_000_000 / fps_integer
            elapsed_time_per_frame = timeline.speed.to_unit(prefix: UnitPrefix.milli, unit: TimeUnitType.second) / fps_float
        }
    }
    public var fps_counter:EnvironmentFPSCounter = EnvironmentFPSCounter()
    
    public var ambient_temperature:TemperatureUnit
    public var ambient_pressure:PressureUnit
    public var gravity:AccelerationUnit {
        didSet {
            gravity_per_frame = gravity.value / fps.to_float
        }
    }
    
    public var timeline:EnvironmentTimeline
    public var simulation_elapsed_time:ElapsedTime
    
    private var gravity_per_frame:HugeFloat
    private var timeline_nanoseconds:UInt64
    private var elapsed_time_per_frame:TimeUnit
    
    public var is_simulating:Bool = false
    private var simulation_task:Task<Void, Never>?
    private var fps_counter_task:Task<Void, Never>?
    
    public private(set) var individual_atoms:[Atom]
    public private(set) var half_life_atoms:[Atom]
    
    private var action_log:ScientificEnvironmentActionLog
    
    public init(_ settings: ScientificEnvironmentSettings) {
        uuid = settings.uuid
        let fps:HugeInt = settings.fps, fps_float:HugeFloat = fps.to_float, fps_integer:UInt64 = fps.to_int()!
        self.fps = fps
        ambient_temperature = settings.ambient_temperature
        ambient_pressure = settings.ambient_pressure
        gravity = settings.gravity
        
        let time_speed:TimeUnit = settings.time_speed
        timeline = EnvironmentTimeline(
            starting_point: TimeUnit(type: TimeUnitType.second, value: HugeFloat.zero),
            speed: time_speed,
            end_after: TimeUnit(type: TimeUnitType.second, value: HugeFloat("5"))
        )
        simulation_elapsed_time = ElapsedTime()
        
        gravity_per_frame = gravity.value / fps_float
        timeline_nanoseconds = 1_000_000_000 / fps_integer
        elapsed_time_per_frame = time_speed.to_unit(prefix: UnitPrefix.milli, unit: TimeUnitType.second) / fps_float
        //elapsed_time_per_frame = TimeUnit(type: TimeUnitType.minute, value: HugeFloat.one)
        
        individual_atoms = []
        half_life_atoms = [OxygenIsotope.oxygen_26.atom]
        
        action_log = ScientificEnvironmentActionLog()
    }
    
    public func stop_simulating() {
        guard is_simulating else { return }
        is_simulating = false
        simulation_task!.cancel()
        fps_counter_task!.cancel()
        print("ScientificEnvironment;stop_simulating;action_log=")
        let event_log:[String] = action_log.event_log()
        for entry in event_log {
            print(entry)
        }
    }
    public func resume() {
        guard !is_simulating && !(simulation_elapsed_time >= timeline.end_after) else { return }
        is_simulating = true
        simulation_task = Task {
            await simulate()
        }
        fps_counter_task = Task {
            while !Task.isCancelled {
                try? await Task.sleep(nanoseconds: 1_000_000_000)
                await reset_fps_counter()
                fps_counter.last_count = fps_counter.new_count
                fps_counter.new_count = 0
            }
        }
    }
    @MainActor
    private func reset_fps_counter() {
        fps_counter.objectWillChange.send()
    }
    
    public func simulate() async {
        while !Task.isCancelled {
            tick()
            if simulation_elapsed_time >= timeline.end_after {
                stop_simulating()
                return
            }
            try? await Task.sleep(nanoseconds: timeline_nanoseconds)
        }
    }
    
    private func tick() {
        update_time()
        apply_logic()
        fps_counter.new_count += 1
    }
    
    private func update_time() {
        simulation_elapsed_time += elapsed_time_per_frame
        for index in individual_atoms.indices {
            individual_atoms[index].lifetime_total += elapsed_time_per_frame
        }
        for index in half_life_atoms.indices {
            half_life_atoms[index].lifetime_total += elapsed_time_per_frame
            half_life_atoms[index].elapsed_time_since_last_decay += elapsed_time_per_frame
        }
    }
    
    private func apply_logic() {
        let previous_count:Int = individual_atoms.count
        for index in half_life_atoms.indices {
            if let results:[AtomicDecayResult] = half_life_atoms[index].decay() {
                var event_timestamp:ElapsedTime = simulation_elapsed_time - elapsed_time_per_frame
                for result in results {
                    event_timestamp += result.atom_lifetime
                    let action:ScientificEnvironmentAction = ScientificEnvironmentAction(type: ScientificEnvironmentActionType.atomic_decay, timestamp: event_timestamp, data: result)
                    action_log.submit(action)
                }
                if !half_life_atoms[index].is_unstable {
                    individual_atoms.append(half_life_atoms[index])
                }
            }
        }
        if previous_count != individual_atoms.count {
            half_life_atoms.removeAll(where: { !$0.is_unstable })
        }
        
        apply_physics()
    }
    
    private func apply_physics() {
        for index in individual_atoms.indices {
            individual_atoms[index].location.y -= gravity_per_frame
            
        }
        for index in half_life_atoms.indices {
            half_life_atoms[index].location.y -= gravity_per_frame
        }
    }
    // TODO: support time skipping/jumping/browsing/indexing
    private func apply_physics(multiplier: HugeFloat) {
    }
}
