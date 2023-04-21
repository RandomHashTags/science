//
//  MathmaticalConstant.swift
//
//  Created by Evan Anderson on 4/5/23.
//

import Foundation
import huge_numbers

enum MathmaticalConstant {
    static var speed_of_light_in_a_vacuum:SpeedUnit = SpeedUnit(type: SpeedUnitType.metre_per_second, value: HugeFloat("299792458"))
    static var speed_of_light_in_a_vacuum_squared:SpeedUnit = SpeedUnit(type: SpeedUnitType.metre_per_second, value: HugeFloat("299792458") * HugeFloat("299792458"))
    static var planck_constant:ActionUnit = ActionUnit(type: ActionUnitType.joule_second, value: HugeFloat("0.000000000000000000000000000000000662607015"))
    static var elementary_charge:ElectricChargeUnit = ElectricChargeUnit(prefix: UnitPrefix.zepto, type: ElectricChargeUnitType.coulomb, value: HugeFloat("160.2176634"))
}
