//
//  AccelerationUnit.swift
//  
//
//  Created by Evan Anderson on 4/25/23.
//

import Foundation
import huge_numbers

struct AccelerationUnit : Unit {
    static var zero:AccelerationUnit = AccelerationUnit(type: AccelerationUnitType.metres_per_second_per_second, value: HugeFloat.zero)
    
    typealias TargetUnitType = AccelerationUnitType
    
    var prefix:UnitPrefix
    var type:AccelerationUnitType
    var value:HugeFloat
    
    func convert_value_to_unit(_ unit: AccelerationUnitType) -> HugeFloat {
        switch type {
            
        case .metres_per_second_per_second:
            switch unit {
            case .metres_per_second_per_second: return value
            }
            
        }
    }
}
