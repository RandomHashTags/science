//
//  Environment.swift
//  
//
//  Created by Evan Anderson on 4/21/23.
//

import Foundation
import huge_numbers

struct Environment : Hashable {
    var ambient_temperature:TemperatureUnit
    var ambient_pressure:PressureUnit
    var gravity:AccelerationUnit
    
    var timeline:EnvironmentTimeline
    
    var is_paused:Bool
    
    init(_ settings: EnvironmentSettings) {
        ambient_temperature = settings.ambient_temperature
        ambient_pressure = settings.ambient_pressure
        gravity = settings.gravity
        
        timeline = EnvironmentTimeline(
            starting_point: TimeUnit(type: TimeUnitType.second, value: HugeFloat.zero),
            speed: settings.time_speed,
            end_after: TimeUnit(type: TimeUnitType.minute, value: HugeFloat("5"))
        )
        is_paused = true
    }
    
    mutating func pause() {
        guard !is_paused else { return }
        is_paused = true
    }
    mutating func resume() async {
        guard is_paused else { return }
        is_paused = false
        await simulate()
    }
    
    mutating func simulate() async {
        while !is_paused {
            apply_physics()
            if let nanoseconds:UInt64 = timeline.speed.to_unit(prefix: UnitPrefix.nano, unit: TimeUnitType.second).value.integer.to_int() {
                try? await Task.sleep(nanoseconds: nanoseconds)
            }
        }
    }
    
    func save() {
    }
    
    
    mutating func apply_physics() {
    }
}
