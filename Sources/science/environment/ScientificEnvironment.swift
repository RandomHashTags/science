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
            gravity_per_frame = gravity.value / fps.to_float
            timeline_nanoseconds = 1_000_000_000 / fps_integer
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
    
    public init(_ settings: ScientificEnvironmentSettings) {
        uuid = settings.uuid ?? UUID()
        let fps:HugeInt = settings.fps, fps_float:HugeFloat = fps.to_float, fps_integer:UInt64 = fps.to_int()!
        self.fps = fps
        ambient_temperature = settings.ambient_temperature
        ambient_pressure = settings.ambient_pressure
        gravity = settings.gravity
        
        timeline = EnvironmentTimeline(
            starting_point: TimeUnit(type: TimeUnitType.second, value: HugeFloat.zero),
            speed: settings.time_speed,
            end_after: TimeUnit(type: TimeUnitType.minute, value: HugeFloat("5"))
        )
        simulation_elapsed_time = ElapsedTime()
        
        gravity_per_frame = gravity.value / fps_float
        timeline_nanoseconds = 1_000_000_000 / fps_integer
        elapsed_time_per_frame = TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("1000") / fps_float)
        
        individual_atoms = []
        half_life_atoms = [OxygenIsotope.oxygen_26.atom]
    }
    
    public func stop_simulating() {
        guard is_simulating else { return }
        is_simulating = false
        simulation_task!.cancel()
        fps_counter_task!.cancel()
    }
    public func resume() {
        guard !is_simulating else { return }
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
            try? await Task.sleep(nanoseconds: timeline_nanoseconds)
        }
    }
    
    private func tick() {
        apply_physics()
        update_time()
        fps_counter.new_count += 1
    }
    
    private func update_time() {
        simulation_elapsed_time += elapsed_time_per_frame
        for index in individual_atoms.indices {
            individual_atoms[index].lifetime += elapsed_time_per_frame
        }
        for index in half_life_atoms.indices {
            half_life_atoms[index].lifetime += elapsed_time_per_frame
        }
        
        let previous_count:Int = individual_atoms.count
        for index in half_life_atoms.indices {
            if let reactions:[ChemicalReaction] = half_life_atoms[index].decay() {
                if !half_life_atoms[index].is_unstable {
                    individual_atoms.append(half_life_atoms[index])
                }
            }
        }
        if previous_count != individual_atoms.count {
            half_life_atoms.removeAll(where: { !$0.is_unstable })
        }
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
