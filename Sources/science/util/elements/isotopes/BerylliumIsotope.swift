//
//  BerylliumIsotope.swift
//  
//
//  Created by Evan Anderson on 5/1/23.
//

import Foundation
import huge_numbers

public enum BerylliumIsotope {
    public static var beryllium_5:ChemicalElement =  ChemicalElement(ChemicalElement.beryllium, neutron_count: 1, standard_atomic_weight: 5.039_87, half_life: nil) // TODO: fix
    public static var beryllium_6:ChemicalElement =  ChemicalElement(ChemicalElement.beryllium, neutron_count: 2, standard_atomic_weight: 6.019_726, half_life: TimeUnit(prefix: UnitPrefix.zepto, type: TimeUnitType.second, value: HugeFloat("5.0")))
    public static var beryllium_7:ChemicalElement =  ChemicalElement(ChemicalElement.beryllium, neutron_count: 3, standard_atomic_weight: 7.016_928_71, half_life: TimeUnit(type: TimeUnitType.day, value: HugeFloat("53.22")))
    public static var beryllium_8:ChemicalElement =  ChemicalElement(ChemicalElement.beryllium, neutron_count: 4, standard_atomic_weight: 8.005_305, half_life: TimeUnit(prefix: UnitPrefix.atto, type: TimeUnitType.second, value: HugeFloat("81.9")))
    public static var beryllium_9:ChemicalElement =  ChemicalElement(ChemicalElement.beryllium, neutron_count: 5, standard_atomic_weight: 9.012_183_06)
    public static var beryllium_10:ChemicalElement = ChemicalElement(ChemicalElement.beryllium, neutron_count: 6, standard_atomic_weight: 10.013_534_69, half_life: TimeUnit(type: TimeUnitType.year, value: HugeFloat("1387000"))) // TODO: fix? | tropical year
    public static var beryllium_11:ChemicalElement = ChemicalElement(ChemicalElement.beryllium, neutron_count: 7, standard_atomic_weight: 11.021_661_08, half_life: TimeUnit(type: TimeUnitType.second, value: HugeFloat("13.76")))
    public static var beryllium_12:ChemicalElement = ChemicalElement(ChemicalElement.beryllium, neutron_count: 8, standard_atomic_weight: 12.026_922_1, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("21.46")))
    public static var beryllium_13:ChemicalElement = ChemicalElement(ChemicalElement.beryllium, neutron_count: 9, standard_atomic_weight: 13.036_135, half_life: TimeUnit(prefix: UnitPrefix.zepto, type: TimeUnitType.second, value: HugeFloat("1.0")))
    public static var beryllium_14:ChemicalElement = ChemicalElement(ChemicalElement.beryllium, neutron_count: 10, standard_atomic_weight: 13.042_89, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("4.53")))
    public static var beryllium_15:ChemicalElement = ChemicalElement(ChemicalElement.beryllium, neutron_count: 11, standard_atomic_weight: 15.053_49, half_life: TimeUnit(prefix: UnitPrefix.yocto, type: TimeUnitType.second, value: HugeFloat("790")))
    public static var beryllium_16:ChemicalElement = ChemicalElement(ChemicalElement.beryllium, neutron_count: 12, standard_atomic_weight: 16.061_67, half_life: TimeUnit(prefix: UnitPrefix.yocto, type: TimeUnitType.second, value: HugeFloat("650")))
}
