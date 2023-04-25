//
//  SpeedUnitType.swift
//
//  Created by Evan Anderson on 4/5/23.
//

import Foundation

enum SpeedUnitType : UnitType {
    case metre_per_second
    case kilometre_per_hour
    case mile_per_hour
    case knot
    case foot_per_second
    
    var symbol : String {
        switch self {
        case .metre_per_second: return "m/s"
        case .kilometre_per_hour: return "km/h"
        case .mile_per_hour: return "mph"
        case .knot: return "knot"
        case .foot_per_second: return "ft/s"
        }
    }
}