//
//  EnergyUnit.swift
//
//  Created by Evan Anderson on 4/6/23.
//

import Foundation
import huge_numbers

struct EnergyUnit : Unit {
    typealias TargetUnitType = EnergyUnitType
    
    var prefix:UnitPrefix
    var type:EnergyUnitType
    var value:HugeFloat
    
    func convert_value_to_unit(_ unit: EnergyUnitType) -> HugeFloat {
        switch type {
            
        case .joule:
            switch unit {
            case .joule: return value
            case .electronvolt: return value * 6_241_509_343_260_179_456
            }
            
        case .electronvolt:
            switch unit {
            case .joule: return value * (1.602_176_634 * pow(10, -19))
            case .electronvolt: return value
            }
        }
    }
    
    func to_kilograms() -> MassUnit {
        let joule_value:HugeFloat = convert_value_to_unit(EnergyUnitType.joule)
        let kilograms_value:HugeFloat = joule_value / MathmaticalConstant.speed_of_light_in_a_vacuum_squared.value
        return MassUnit(prefix: UnitPrefix.kilo, type: MassUnitType.gram, value: kilograms_value)
    }
}
