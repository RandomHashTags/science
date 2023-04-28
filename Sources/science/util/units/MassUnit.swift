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
            case .ounce: return value * 0.03527396195
            case .pound: return value * 0.00220462262185
            case .tonne: return value / 1_000_000
            }
            
        case .ounce:
            switch unit {
            case .gram: return value * 28.34952
            case .ounce: return value
            case .pound: return value * 0.0625
            case .tonne: return value * 0.00002834952
            }
            
        case .pound:
            switch unit {
            case .gram: return value * 453.59237
            case .ounce: return value * 16
            case .pound: return value
            case .tonne: return value * 0.00045359237
            }
            
        case .tonne:
            switch unit {
            case .gram: return value * 1_000_000
            case .ounce: return value * 35273.96194958
            case .pound: return value * 2204.62262185
            case .tonne: return value
            }
        }
    }
    
    func to_joule() -> EnergyUnit {
        let kilogram_value:HugeFloat = convert_value_to_unit(prefix: UnitPrefix.kilo, MassUnitType.gram)
        let joules_value:HugeFloat = kilogram_value * MathmaticalConstant.speed_of_light_in_a_vacuum_squared.value
        return EnergyUnit(type: EnergyUnitType.joule, value: joules_value)
    }
}
