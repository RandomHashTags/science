//
//  HydrogenIsotope.swift
//  
//
//  Created by Evan Anderson on 4/30/23.
//

import Foundation
import huge_numbers

// https://en.wikipedia.org/wiki/Isotopes_of_hydrogen
public enum HydrogenIsotope {
    public static var protium:ChemicalElement =    ChemicalElement(ChemicalElement.hydrogen, neutron_count: 0, standard_atomic_weight: 1.007_825_031_898)
    public static var deuterium:ChemicalElement =  ChemicalElement(ChemicalElement.hydrogen, neutron_count: 1, standard_atomic_weight: 2.014_101_777_844)
    public static var tritium:ChemicalElement =    ChemicalElement(ChemicalElement.hydrogen, neutron_count: 2, standard_atomic_weight: 3.016_049_281_320, half_life: TimeUnit(type: TimeUnitType.year, value: HugeFloat("12.32")))
    public static var hydrogen_4:ChemicalElement = ChemicalElement(ChemicalElement.hydrogen, neutron_count: 3, standard_atomic_weight: 4.026_43, half_life: TimeUnit(prefix: UnitPrefix.yocto, type: TimeUnitType.second, value: HugeFloat("139")))
    public static var hydrogen_5:ChemicalElement = ChemicalElement(ChemicalElement.hydrogen, neutron_count: 4, standard_atomic_weight: 5.035_31, half_life: TimeUnit(prefix: UnitPrefix.yocto, type: TimeUnitType.second, value: HugeFloat("86")))
    public static var hydrogen_6:ChemicalElement = ChemicalElement(ChemicalElement.hydrogen, neutron_count: 5, standard_atomic_weight: 6.044_96, half_life: TimeUnit(prefix: UnitPrefix.yocto, type: TimeUnitType.second, value: HugeFloat("294")))
    public static var hydrogen_7:ChemicalElement = ChemicalElement(ChemicalElement.hydrogen, neutron_count: 6, standard_atomic_weight: 7.052_750, half_life: TimeUnit(prefix: UnitPrefix.yocto, type: TimeUnitType.second, value: HugeFloat("652")))
}
