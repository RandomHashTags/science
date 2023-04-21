//
//  ActionUnit.swift
//
//  Created by Evan Anderson on 4/6/23.
//

import Foundation
import huge_numbers

struct ActionUnit : Unit {
    typealias TargetUnitType = ActionUnitType
    
    var prefix:UnitPrefix
    var type:ActionUnitType
    var value:HugeFloat
    
    func convert_value_to_unit(_ unit: ActionUnitType) -> HugeFloat {
        switch type {
            
        case .joule_second:
            switch unit {
            case .joule_second: return value
            }
            
        }
    }
}
