//
//  ActionUnitType.swift
//
//  Created by Evan Anderson on 4/6/23.
//

import Foundation

enum ActionUnitType : UnitType {
    case joule_second
    
    var symbol : String {
        switch self {
        case .joule_second: return "J*s"
        }
    }
}
