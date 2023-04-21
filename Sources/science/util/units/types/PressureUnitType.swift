//
//  PressureUnitType.swift
//  
//
//  Created by Evan Anderson on 4/21/23.
//

import Foundation

enum PressureUnitType : UnitType {
    case pascal
    
    var symbol : String {
        switch self {
        case .pascal: return "Pa"
        }
    }
}
