//
//  SiliconIsotope.swift
//  
//
//  Created by Evan Anderson on 5/1/23.
//

import Foundation
import huge_numbers

// https://en.wikipedia.org/wiki/Isotopes_of_silicon
public enum SiliconIsotope {
    public static var silicon_22:ChemicalElement = ChemicalElement(ChemicalElement.silicon, neutron_count: 8, standard_atomic_weight: 22.035_79, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("29")))
    public static var silicon_23:ChemicalElement = ChemicalElement(ChemicalElement.silicon, neutron_count: 9, standard_atomic_weight: 23.025_44, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("42.3")))
    public static var silicon_24:ChemicalElement = ChemicalElement(ChemicalElement.silicon, neutron_count: 10, standard_atomic_weight: 24.011_535, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("140")))
    public static var silicon_25:ChemicalElement = ChemicalElement(ChemicalElement.silicon, neutron_count: 11, standard_atomic_weight: 25.004_109, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("220")))
    public static var silicon_26:ChemicalElement = ChemicalElement(ChemicalElement.silicon, neutron_count: 12, standard_atomic_weight: 25.992_333_8, half_life: TimeUnit(type: TimeUnitType.second, value: HugeFloat("2.2453")))
    public static var silicon_27:ChemicalElement = ChemicalElement(ChemicalElement.silicon, neutron_count: 13, standard_atomic_weight: 26.986_704_69, half_life: TimeUnit(type: TimeUnitType.second, value: HugeFloat("4.15")))
    public static var silicon_28:ChemicalElement = ChemicalElement(ChemicalElement.silicon, neutron_count: 14, standard_atomic_weight: 27.976_926_535_0)
    public static var silicon_29:ChemicalElement = ChemicalElement(ChemicalElement.silicon, neutron_count: 15, standard_atomic_weight: 28.976_494_665_3)
    public static var silicon_30:ChemicalElement = ChemicalElement(ChemicalElement.silicon, neutron_count: 16, standard_atomic_weight: 29.973_770_137)
    public static var silicon_31:ChemicalElement = ChemicalElement(ChemicalElement.silicon, neutron_count: 17, standard_atomic_weight: 30.975_363_19, half_life: TimeUnit(type: TimeUnitType.minute, value: HugeFloat("157.36")))
    public static var silicon_32:ChemicalElement = ChemicalElement(ChemicalElement.silicon, neutron_count: 18, standard_atomic_weight: 31.974_151_5, half_life: TimeUnit(type: TimeUnitType.year, value: HugeFloat("153")))
    public static var silicon_33:ChemicalElement = ChemicalElement(ChemicalElement.silicon, neutron_count: 19, standard_atomic_weight: 32.977_977_0, half_life: TimeUnit(type: TimeUnitType.second, value: HugeFloat("6.18")))
    public static var silicon_34:ChemicalElement = ChemicalElement(ChemicalElement.silicon, neutron_count: 20, standard_atomic_weight: 33.978_575, half_life: TimeUnit(type: TimeUnitType.second, value: HugeFloat("2.77")))
    public static var silicon_35:ChemicalElement = ChemicalElement(ChemicalElement.silicon, neutron_count: 21, standard_atomic_weight: 34.984_55, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("780")))
    public static var silicon_36:ChemicalElement = ChemicalElement(ChemicalElement.silicon, neutron_count: 22, standard_atomic_weight: 35.986_65, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("450")))
    public static var silicon_37:ChemicalElement = ChemicalElement(ChemicalElement.silicon, neutron_count: 23, standard_atomic_weight: 36.992_95, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("90")))
    public static var silicon_38:ChemicalElement = ChemicalElement(ChemicalElement.silicon, neutron_count: 24, standard_atomic_weight: 37.995_52, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("63")))
    public static var silicon_39:ChemicalElement = ChemicalElement(ChemicalElement.silicon, neutron_count: 25, standard_atomic_weight: 39.002_49, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("47.5")))
    public static var silicon_40:ChemicalElement = ChemicalElement(ChemicalElement.silicon, neutron_count: 26, standard_atomic_weight: 40.005_83, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("33.0")))
    public static var silicon_41:ChemicalElement = ChemicalElement(ChemicalElement.silicon, neutron_count: 27, standard_atomic_weight: 41.013_01, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("20.0")))
    public static var silicon_42:ChemicalElement = ChemicalElement(ChemicalElement.silicon, neutron_count: 28, standard_atomic_weight: 42.017_68, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("12.5")))
    public static var silicon_43:ChemicalElement = ChemicalElement(ChemicalElement.silicon, neutron_count: 29, standard_atomic_weight: 42.024_80, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("13")))
    public static var silicon_44:ChemicalElement = ChemicalElement(ChemicalElement.silicon, neutron_count: 30, standard_atomic_weight: 44.031_47, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("4")))
}
