//
//  Photon.swift
//
//  Created by Evan Anderson on 4/5/23.
//

import Foundation
import huge_numbers

struct Photon : ElementaryParticle {
    let elementary_charge:Double = 0
    
    var frequency:FrequencyUnit
    var mass:MassUnit = MassUnit(prefix: UnitPrefix.kilo, type: MassUnitType.gram, value: HugeFloat.zero)
    
    var energy : EnergyUnit {
        let action:ActionUnit = MathmaticalConstant.planck_constant * frequency.convert_value_to_unit(FrequencyUnitType.hertz)
        return EnergyUnit(type: EnergyUnitType.joule, value: action.value)
    }
}
