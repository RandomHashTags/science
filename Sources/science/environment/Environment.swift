//
//  Environment.swift
//  
//
//  Created by Evan Anderson on 4/21/23.
//

import Foundation

struct Environment : Hashable {
    var ambient_temperature:TemperatureUnit
    var ambient_pressure:PressureUnit
    
    var is_paused:Bool = false
    
    mutating func pause() {
        guard !is_paused else { return }
        is_paused = true
    }
    mutating func resume() {
        guard is_paused else { return }
        is_paused = false
        simulate()
    }
    
    func simulate() {
        while !is_paused {
        }
    }
    
    func save() {
    }
}
