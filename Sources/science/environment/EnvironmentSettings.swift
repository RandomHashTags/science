//
//  EnvironmentSettings.swift
//  
//
//  Created by Evan Anderson on 4/26/23.
//

import Foundation

public struct EnvironmentSettings : Hashable {
    public var ambient_temperature:TemperatureUnit
    public var ambient_pressure:PressureUnit
    public var gravity:AccelerationUnit
    public var time_speed:TimeUnit
    
    public init(ambient_temperature: TemperatureUnit, ambient_pressure: PressureUnit, gravity: AccelerationUnit, time_speed: TimeUnit) {
        self.ambient_temperature = ambient_temperature
        self.ambient_pressure = ambient_pressure
        self.gravity = gravity
        self.time_speed = time_speed
    }
}
