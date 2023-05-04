//
//  MassUnitType.swift
//
//  Created by Evan Anderson on 4/4/23.
//

import Foundation

public enum MassUnitType : String, UnitType {
    case gram
    case ounce
    case pound
    case tonne
    
    public var symbol : String {
        switch self {
        case .gram: return "g"
        case .ounce: return "oz"
        case .pound: return "lb"
        case .tonne: return "t"
        }
    }
}
