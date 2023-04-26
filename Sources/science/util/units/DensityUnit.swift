//
//  DensityUnit.swift
//  
//
//  Created by Evan Anderson on 4/26/23.
//

import Foundation
import huge_numbers

struct DensityUnit : Unit {
    typealias TargetUnitType = DensityUnitType
    
    var prefix:UnitPrefix
    var type:DensityUnitType
    var value:HugeFloat
    
    func convert_value_to_unit(_ unit: DensityUnitType) -> HugeFloat {
        switch type {
            
        case .kilogram_per_cubic_metre:
            switch unit {
            case .kilogram_per_cubic_metre: return value
            }
            
        }
    }
}
