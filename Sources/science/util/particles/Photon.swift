//
//  Photon.swift
//
//  Created by Evan Anderson on 4/5/23.
//

import Foundation
import huge_numbers

public struct Photon : ElementaryParticle {
    public let elementary_charge:Double = 0
    
    public var frequency:FrequencyUnit
    public var mass:MassUnit
    
    public init(frequency: FrequencyUnit, mass: MassUnit = MassUnit(prefix: UnitPrefix.kilo, type: MassUnitType.gram, value: HugeFloat.zero)) {
        self.frequency = frequency
        self.mass = mass
    }
    
    public func to_energy(unit_prefix: UnitPrefix = UnitPrefix.normal, unit_type: EnergyUnitType = EnergyUnitType.joule) -> EnergyUnit {
        let action:ActionUnit = MathmaticalConstant.planck_constant * frequency.convert_value_to_unit(FrequencyUnitType.hertz)
        let joules:EnergyUnit = EnergyUnit(type: EnergyUnitType.joule, value: action.value)
        return joules.to_unit(prefix: unit_prefix, unit: unit_type)
    }
}
