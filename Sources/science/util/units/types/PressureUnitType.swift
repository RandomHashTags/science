//
//  PressureUnitType.swift
//  
//
//  Created by Evan Anderson on 4/21/23.
//

import Foundation

enum PressureUnitType : UnitType {
    case pascal
    case pound_per_square_inch
    case standard_atmosphere
    
    var symbol : String {
        switch self {
        case .pascal: return "Pa"
        case .pound_per_square_inch: return "psi"
        case .standard_atmosphere: return "atm"
        }
    }
}