//
//  ElectricChargeUnitType.swift
//
//  Created by Evan Anderson on 4/6/23.
//

import Foundation

enum ElectricChargeUnitType : UnitType {
    case coulomb
    
    var symbol : String {
        switch self {
        case .coulomb: return "C"
        }
    }
}
