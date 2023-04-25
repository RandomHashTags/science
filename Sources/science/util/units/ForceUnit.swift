//
//  ForceUnit.swift
//  
//
//  Created by Evan Anderson on 4/25/23.
//

import Foundation
import huge_numbers

struct ForceUnit : Unit {
    typealias TargetUnitType = ForceUnitType
    
    var prefix:UnitPrefix
    var type:ForceUnitType
    var value:HugeFloat
    
    func convert_value_to_unit(_ unit: ForceUnitType) -> HugeFloat {
        switch type {
            
        case .newton:
            switch unit {
            case .newton: return value
            }
            
        }
    }
}
