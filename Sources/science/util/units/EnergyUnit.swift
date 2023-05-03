//
//  EnergyUnit.swift
//
//  Created by Evan Anderson on 4/6/23.
//

import Foundation
import huge_numbers

public struct EnergyUnit : Unit {
    public typealias TargetUnitType = EnergyUnitType
    
    public var prefix:UnitPrefix
    public var type:TargetUnitType
    public var value:HugeFloat
    
    public init(prefix: UnitPrefix, type: TargetUnitType, value: HugeFloat) {
        self.prefix = prefix
        self.type = type
        self.value = value
    }
    
    public func convert_value_to_unit(_ unit: EnergyUnitType) -> HugeFloat {
        switch type {
            
        case .joule:
            switch unit {
            case .joule: return value
            case .electronvolt: return value * HugeFloat("6241509343260179456")
            }
            
        case .electronvolt:
            switch unit {
            case .joule: return value * HugeFloat("0.0000000000000000001602176634")
            case .electronvolt: return value
            }
        }
    }
    
    public func to_kilograms() -> MassUnit {
        let joule_value:HugeFloat = convert_value_to_unit(EnergyUnitType.joule)
        let kilograms_value:HugeFloat = joule_value / MathmaticalConstant.speed_of_light_in_a_vacuum_squared.value
        return MassUnit(prefix: UnitPrefix.kilo, type: MassUnitType.gram, value: kilograms_value)
    }
}
