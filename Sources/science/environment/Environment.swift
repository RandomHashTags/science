//
//  Environment.swift
//  
//
//  Created by Evan Anderson on 4/21/23.
//

import Foundation
import huge_numbers

public struct Environment : Hashable {
    public var ambient_temperature:TemperatureUnit
    public var ambient_pressure:PressureUnit
    public var gravity:AccelerationUnit
    
    public var timeline:EnvironmentTimeline {
        didSet {
            timeline_nanoseconds = timeline.speed.to_unit(prefix: UnitPrefix.nano, unit: TimeUnitType.second).value.integer.to_int()!
        }
    }
    private var timeline_nanoseconds:UInt64
    
    public var is_paused:Bool
    
    public init(_ settings: EnvironmentSettings) {
        ambient_temperature = settings.ambient_temperature
        ambient_pressure = settings.ambient_pressure
        gravity = settings.gravity
        
        timeline = EnvironmentTimeline(
            starting_point: TimeUnit(type: TimeUnitType.second, value: HugeFloat.zero),
            speed: settings.time_speed,
            end_after: TimeUnit(type: TimeUnitType.minute, value: HugeFloat("5"))
        )
        timeline_nanoseconds = timeline.speed.to_unit(prefix: UnitPrefix.nano, unit: TimeUnitType.second).value.integer.to_int()!
        is_paused = true
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
            print("Environment;simulate")
            apply_physics()
            try? await Task.sleep(nanoseconds: timeline_nanoseconds)
        }
    }
    
    public func save() {
    }
    
    
    public mutating func apply_physics() {
    }
}
