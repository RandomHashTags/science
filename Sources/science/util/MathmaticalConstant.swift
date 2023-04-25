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
    
    /// As defined at https://en.wikipedia.org/wiki/Planck_constant .
    static var planck_constant:ActionUnit = ActionUnit(type: ActionUnitType.joule_second, value: HugeFloat("0.000000000000000000000000000000000662607015"))
    
    /// As defined at https://en.wikipedia.org/wiki/Elementary_charge .
    static var elementary_charge:ElectricChargeUnit = ElectricChargeUnit(prefix: UnitPrefix.zepto, type: ElectricChargeUnitType.coulomb, value: HugeFloat("160.2176634"))
    
    /// Exactly 273.15 degrees Kelvin, as defined at https://en.wikipedia.org/wiki/Standard_temperature_and_pressure .
    static var standard_temperature:TemperatureUnit = TemperatureUnit(type: TemperatureUnitType.kelvin, value: HugeFloat("273.15"))
    /// Exactly 100 kiloPascals, as defined at https://en.wikipedia.org/wiki/Standard_temperature_and_pressure .
    static var standard_pressure:PressureUnit = PressureUnit(prefix: UnitPrefix.kilo, type: PressureUnitType.pascal, value: HugeFloat("100"))
}
