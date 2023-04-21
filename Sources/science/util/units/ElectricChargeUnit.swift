//
//  ElectricChargeUnit.swift
//
//  Created by Evan Anderson on 4/6/23.
//

import Foundation
import huge_numbers

struct ElectricChargeUnit : Unit {
    typealias TargetUnitType = ElectricChargeUnitType
    
    var prefix:UnitPrefix
    var type:ElectricChargeUnitType
    var value:HugeFloat
    
    func convert_value_to_unit(_ unit: ElectricChargeUnitType) -> HugeFloat {
        switch type {
            
        case .coulomb:
            switch unit {
            case .coulomb: return value
            }
            
        }
    }
}
