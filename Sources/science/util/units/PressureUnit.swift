//
//  PressureUnit.swift
//  
//
//  Created by Evan Anderson on 4/21/23.
//

import Foundation
import huge_numbers

struct PressureUnit : Unit {
    typealias TargetUnitType = PressureUnitType
    
    var prefix:UnitPrefix
    var type:PressureUnitType
    var value:HugeFloat
    
    func convert_value_to_unit(_ unit: PressureUnitType) -> HugeFloat {
        switch type {
            
        case .pascal:
            switch unit {
            case .pascal: return value
            }
            
        }
    }
}
