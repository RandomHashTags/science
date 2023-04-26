//
//  EnvironmentSettings.swift
//  
//
//  Created by Evan Anderson on 4/26/23.
//

import Foundation

struct EnvironmentSettings : Hashable {
    var ambient_temperature:TemperatureUnit
    var ambient_pressure:PressureUnit
    var gravity:AccelerationUnit
    var time_speed:TimeUnit
}
