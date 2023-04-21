//
//  MassUnitType.swift
//
//  Created by Evan Anderson on 4/4/23.
//

import Foundation

enum MassUnitType : UnitType {
    
    case gram
    case ounce
    case pound
    case tonne
    
    var symbol : String {
        switch self {
        case .gram: return "g"
        case .ounce: return "oz"
        case .pound: return "lb"
        case .tonne: return "t"
        }
    }
}
