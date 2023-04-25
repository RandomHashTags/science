//
//  AccelerationUnitType.swift
//  
//
//  Created by Evan Anderson on 4/25/23.
//

import Foundation

enum AccelerationUnitType : UnitType {
    case metres_per_second_per_second
    
    var symbol : String {
        switch self {
        case .metres_per_second_per_second: return "m/s2"
        }
    }
}
