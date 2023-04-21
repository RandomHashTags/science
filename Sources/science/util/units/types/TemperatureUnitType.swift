//
//  TemperatureUnitType.swift
//
//  Created by Evan Anderson on 4/5/23.
//

import Foundation

enum TemperatureUnitType : UnitType {
    case kelvin
    case celsius
    case fahrenheit
    case rankine
    
    var symbol : String {
        switch self {
        case .kelvin: return "K"
        case .celsius: return "C"
        case .fahrenheit: return "F"
        case .rankine: return "R"
        }
    }
}
