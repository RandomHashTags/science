//
//  MassUnit.swift
//
//  Created by Evan Anderson on 4/4/23.
//

import Foundation
import huge_numbers

public struct MassUnit : Unit {
    public typealias TargetUnitType = MassUnitType
    
    public var prefix:UnitPrefix
    public var type:TargetUnitType
    public var value:HugeFloat
    
    public init(prefix: UnitPrefix, type: TargetUnitType, value: HugeFloat) {
        self.prefix = prefix
        self.type = type
        self.value = value
    }
    
    public func convert_value_to_unit(_ unit: MassUnitType) -> HugeFloat {
        switch type {
            
        case .gram:
            switch unit {
            case .gram: return value
            case .ounce: return value * HugeFloat("0.03527396195")
            case .pound: return value * HugeFloat("0.00220462262185")
            case .tonne: return value.multiply_decimal_by_ten(-6)
            }
            
        case .ounce:
            switch unit {
            case .gram: return value * HugeFloat("28.34952")
            case .ounce: return value
            case .pound: return value * HugeFloat("0.0625")
            case .tonne: return value * HugeFloat("0.00002834952")
            }
            
        case .pound:
            switch unit {
            case .gram: return value * HugeFloat("453.59237")
            case .ounce: return value * HugeFloat("16")
            case .pound: return value
            case .tonne: return value * HugeFloat("0.00045359237")
            }
            
        case .tonne:
            switch unit {
            case .gram: return value.multiply_decimal_by_ten(6)
            case .ounce: return value * HugeFloat("35273.96194958")
            case .pound: return value * HugeFloat("2204.62262185")
            case .tonne: return value
            }
        }
    }
    
    /// Converts this ``MassUnit`` to a ``EnergyUnit``. Default is the joule.
    public func to_energy(unit_prefix: UnitPrefix = UnitPrefix.normal, unit_type: EnergyUnitType = EnergyUnitType.joule) -> EnergyUnit {
        let kilogram_value:HugeFloat = convert_value_to_unit(prefix: UnitPrefix.kilo, MassUnitType.gram)
        let joules_value:HugeFloat = kilogram_value * MathmaticalConstant.speed_of_light_in_a_vacuum_squared.value
        let joules:EnergyUnit = EnergyUnit(type: EnergyUnitType.joule, value: joules_value)
        return joules.to_unit(prefix: unit_prefix, unit: unit_type)
    }
}
