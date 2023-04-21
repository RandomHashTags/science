//
//  EnergyUnitType.swift
//
//  Created by Evan Anderson on 4/6/23.
//

import Foundation

enum EnergyUnitType : UnitType {
    case joule
    case electronvolt
    
    var symbol : String {
        switch self {
        case .joule: return "J"
        case .electronvolt: return "eV"
        }
    }
}
