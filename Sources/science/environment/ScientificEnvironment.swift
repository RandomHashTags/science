//
//  ScientificEnvironment.swift
//  
//
//  Created by Evan Anderson on 4/21/23.
//

import Foundation
import huge_numbers

// TODO: add a tick handler and tick listeners for dynamic manipulation
public struct ScientificEnvironment : Hashable {
    public var fps:HugeInt {
        didSet {
            let fps_integer:UInt64 = fps.to_int()!
            gravity_per_frame = gravity.value / fps.to_float
            timeline_nanoseconds = 1_000_000_000 / fps_integer
        }
    }
    
    public var ambient_temperature:TemperatureUnit
    public var ambient_pressure:PressureUnit
    public var gravity:AccelerationUnit {
        didSet {
            gravity_per_frame = gravity.value / fps.to_float
        }
    }
    
    public var timeline:EnvironmentTimeline
    public var elapsed_time:ElapsedTime
    
    private var gravity_per_frame:HugeFloat
    private var timeline_nanoseconds:UInt64
    private var elapsed_time_per_frame:TimeUnit
    
    public var is_paused:Bool
    
    private var individual_atoms:[Atom]
    private var half_life_atoms:[Atom]
    
    public init(_ settings: ScientificEnvironmentSettings) {
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
        elapsed_time = ElapsedTime()
        
        gravity_per_frame = gravity.value / fps_float
        timeline_nanoseconds = 1_000_000_000 / fps_integer
        elapsed_time_per_frame = TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("1000") / fps_float)
        
        is_paused = true
        individual_atoms = []
        half_life_atoms = []
    }
    
    public mutating func set_unit<T: UnitType>(_ type: T, value: HugeFloat) {
        switch type {
        case is TemperatureUnitType.Type:
            ambient_temperature.value = value
            break
        case is PressureUnitType.Type:
            ambient_temperature.value = value
            break
        case is AccelerationUnitType.Type:
            gravity.value = value
            break
        default:
            break
        }
    }
    
    public mutating func pause() {
        guard !is_paused else { return }
        is_paused = true
    }
    public mutating func resume() async {
        guard is_paused else { return }
        is_paused = false
        await simulate()
    }
    
    public mutating func simulate() async {
        while !is_paused {
            tick()
            try? await Task.sleep(nanoseconds: timeline_nanoseconds)
        }
    }
    
    private mutating func tick() {
        print("ScientificEnvironment;tick")
        apply_physics()
        update_time()
    }
    
    private mutating func update_time() {
        elapsed_time += elapsed_time_per_frame
        for index in individual_atoms.indices {
            individual_atoms[index].lifetime += elapsed_time_per_frame
        }
        for index in half_life_atoms.indices {
            half_life_atoms[index].lifetime += elapsed_time_per_frame
        }
        
        let previous_count:Int = individual_atoms.count
        for index in half_life_atoms.indices {
            let half_life:TimeUnit = half_life_atoms[index].half_life!
            if half_life_atoms[index].lifetime >= half_life {
                let reaction:ChemicalReaction = half_life_atoms[index].decay()
                if !half_life_atoms[index].is_unstable {
                    individual_atoms.append(half_life_atoms[index])
                }
            }
        }
        if previous_count != individual_atoms.count {
            half_life_atoms.removeAll(where: { !$0.is_unstable })
        }
    }
    private mutating func apply_physics() {
        for index in individual_atoms.indices {
            individual_atoms[index].location.y -= gravity_per_frame
            
        }
        for index in half_life_atoms.indices {
            half_life_atoms[index].location.y -= gravity_per_frame
        }
    }
    // TODO: support time skipping/jumping/browsing/indexing
    private mutating func apply_physics(multiplier: HugeFloat) {
    }
}
