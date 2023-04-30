//
//  HeliumIsotope.swift
//  
//
//  Created by Evan Anderson on 4/30/23.
//

import Foundation
import huge_numbers

// https://en.wikipedia.org/wiki/Isotopes_of_helium
public enum HeliumIsotope {
    public static var helium_2:ChemicalElement =  ChemicalElement(ChemicalElement.helium, neutron_count: 0, standard_atomic_weight: 2.015_894, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: HugeFloat("1")))
    public static var helium_3:ChemicalElement =  ChemicalElement(ChemicalElement.helium, neutron_count: 1, standard_atomic_weight: 3.016_029_321_967)
    public static var helium_4:ChemicalElement =  ChemicalElement(ChemicalElement.helium, neutron_count: 2, standard_atomic_weight: 4.002_603_254_130)
    public static var helium_5:ChemicalElement =  ChemicalElement(ChemicalElement.helium, neutron_count: 3, standard_atomic_weight: 5.012_057, half_life: TimeUnit(prefix: UnitPrefix.yocto, type: TimeUnitType.second, value: HugeFloat("602")))
    public static var helium_6:ChemicalElement =  ChemicalElement(ChemicalElement.helium, neutron_count: 4, standard_atomic_weight: 6.018_885_89, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("806.92")))
    public static var helium_7:ChemicalElement =  ChemicalElement(ChemicalElement.helium, neutron_count: 5, standard_atomic_weight: 7.027_991, half_life: TimeUnit(prefix: UnitPrefix.zepto, type: TimeUnitType.second, value: HugeFloat("2.51")))
    public static var helium_8:ChemicalElement =  ChemicalElement(ChemicalElement.helium, neutron_count: 6, standard_atomic_weight: 8.033_934_39, half_life: TimeUnit(prefix: UnitPrefix.zepto, type: TimeUnitType.second, value: HugeFloat("119.5")))
    public static var helium_9:ChemicalElement =  ChemicalElement(ChemicalElement.helium, neutron_count: 7, standard_atomic_weight: 9.043_950, half_life: TimeUnit(prefix: UnitPrefix.zepto, type: TimeUnitType.second, value: HugeFloat("2.5")))
    public static var helium_10:ChemicalElement = ChemicalElement(ChemicalElement.helium, neutron_count: 8, standard_atomic_weight: 10.052_82, half_life: TimeUnit(prefix: UnitPrefix.yocto, type: TimeUnitType.second, value: HugeFloat("260")))
}
