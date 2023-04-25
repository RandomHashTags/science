//
//  ForceUnitType.swift
//  
//
//  Created by Evan Anderson on 4/25/23.
//

import Foundation

enum ForceUnitType : UnitType {
    case newton
    
    var symbol : String {
        switch self {
        case .newton: return "N"
        }
    }
}
