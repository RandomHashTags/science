//
//  TemperatureUnitType.swift
//
//  Created by Evan Anderson on 4/5/23.
//

import Foundation
import huge_numbers

public enum TemperatureUnitType : UnitType {
    case kelvin
    case celsius
    case fahrenheit
    case rankine
    
    public var symbol : String {
        switch self {
        case .kelvin: return "K"
        case .celsius: return "C"
        case .fahrenheit: return "F"
        case .rankine: return "R"
        }
    }
    
    public var absolute_zero : HugeFloat {
        switch self {
        case .kelvin: return HugeFloat.zero
        case .celsius: return HugeFloat("-273.15")
        case .fahrenheit: return HugeFloat("-459.67")
        case .rankine: return HugeFloat.zero
        }
    }
}
