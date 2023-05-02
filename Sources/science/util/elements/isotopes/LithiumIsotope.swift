//
//  LithiumIsotope.swift
//  
//
//  Created by Evan Anderson on 5/1/23.
//

import Foundation
import huge_numbers

// https://en.wikipedia.org/wiki/Isotopes_of_lithium
public enum LithiumIsotope {
    public static var lithium_3:ChemicalElement = ChemicalElement(ChemicalElement.lithium, neutron_count: 0, standard_atomic_weight: 3.030_78, half_life: nil) // TODO: fix
    public static var lithium_4:ChemicalElement = ChemicalElement(ChemicalElement.lithium, neutron_count: 1, standard_atomic_weight: 4.027_19, half_life: TimeUnit(prefix: UnitPrefix.yocto, type: TimeUnitType.second, value: HugeFloat("91")))
    public static var lithium_5:ChemicalElement = ChemicalElement(ChemicalElement.lithium, neutron_count: 2, standard_atomic_weight: 5.012_540, half_life: TimeUnit(prefix: UnitPrefix.yocto, type: TimeUnitType.second, value: HugeFloat("370")))
    public static var lithium_6:ChemicalElement = ChemicalElement(ChemicalElement.lithium, neutron_count: 3, standard_atomic_weight: 6.015_122_887_4)
    public static var lithium_7:ChemicalElement = ChemicalElement(ChemicalElement.lithium, neutron_count: 4, standard_atomic_weight: 7.016_003_434)
    public static var lithium_8:ChemicalElement = ChemicalElement(ChemicalElement.lithium, neutron_count: 5, standard_atomic_weight: 8.022_486_24, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("838.7")))
    public static var lithium_9:ChemicalElement = ChemicalElement(ChemicalElement.lithium, neutron_count: 6, standard_atomic_weight: 9.026_790_19, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("178.2")))
    public static var lithium_10:ChemicalElement = ChemicalElement(ChemicalElement.lithium, neutron_count: 7, standard_atomic_weight: 10.035_483, half_life: TimeUnit(prefix: UnitPrefix.zepto, type: TimeUnitType.second, value: HugeFloat("2.0")))
    public static var lithium_11:ChemicalElement = ChemicalElement(ChemicalElement.lithium, neutron_count: 8, standard_atomic_weight: 11.043_723_6, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("8.75")))
    public static var lithium_12:ChemicalElement = ChemicalElement(ChemicalElement.lithium, neutron_count: 9, standard_atomic_weight: 12.052_610, half_life: nil) // TODO: fix
    public static var lithium_13:ChemicalElement = ChemicalElement(ChemicalElement.lithium, neutron_count: 10, standard_atomic_weight: 13.061_170, half_life: TimeUnit(prefix: UnitPrefix.zepto, type: TimeUnitType.second, value: HugeFloat("3.3")))
}
