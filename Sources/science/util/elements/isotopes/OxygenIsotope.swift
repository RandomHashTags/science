//
//  OxygenIsotope.swift
//  
//
//  Created by Evan Anderson on 4/30/23.
//

import Foundation
import huge_numbers

// https://en.wikipedia.org/wiki/Isotopes_of_oxygen
public enum OxygenIsotope {
    public static var oxygen_11:ChemicalElement = ChemicalElement(ChemicalElement.oxygen, neutron_count: 3, standard_atomic_weight: 11.051_25, decay_mode: AtomicDecayType.proton_emission_2, half_life: TimeUnit(prefix: UnitPrefix.yocto, type: TimeUnitType.second, value: HugeFloat("198")))
    public static var oxygen_12:ChemicalElement = ChemicalElement(ChemicalElement.oxygen, neutron_count: 4, standard_atomic_weight: 12.034_368, decay_mode: AtomicDecayType.proton_emission_2, half_life: TimeUnit(prefix: UnitPrefix.zepto, type: TimeUnitType.second, value: HugeFloat("8.9")))
    public static var oxygen_13:ChemicalElement = ChemicalElement(ChemicalElement.oxygen, neutron_count: 5, standard_atomic_weight: 13.024_815, decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("8.58")))
    public static var oxygen_14:ChemicalElement = ChemicalElement(ChemicalElement.oxygen, neutron_count: 6, standard_atomic_weight: 13.008_596_706, decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: HugeFloat("70.621")))
    public static var oxygen_15:ChemicalElement = ChemicalElement(ChemicalElement.oxygen, neutron_count: 7, standard_atomic_weight: 15.003_065_6, decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: HugeFloat("122.266")))
    public static var oxygen_16:ChemicalElement = ChemicalElement(ChemicalElement.oxygen, neutron_count: 8, standard_atomic_weight: 15.994_914_619_257)
    public static var oxygen_17:ChemicalElement = ChemicalElement(ChemicalElement.oxygen, neutron_count: 9, standard_atomic_weight: 16.999_131_755_953)
    public static var oxygen_18:ChemicalElement = ChemicalElement(ChemicalElement.oxygen, neutron_count: 10, standard_atomic_weight: 17.999_159_612_136)
    public static var oxygen_19:ChemicalElement = ChemicalElement(ChemicalElement.oxygen, neutron_count: 11, standard_atomic_weight: 19.003_578_0, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.second, value: HugeFloat("26.470")))
    public static var oxygen_20:ChemicalElement = ChemicalElement(ChemicalElement.oxygen, neutron_count: 12, standard_atomic_weight: 20.004_075_4, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.second, value: HugeFloat("12.51")))
    public static var oxygen_21:ChemicalElement = ChemicalElement(ChemicalElement.oxygen, neutron_count: 13, standard_atomic_weight: 21.008_655, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.second, value: HugeFloat("3.42")))
    public static var oxygen_22:ChemicalElement = ChemicalElement(ChemicalElement.oxygen, neutron_count: 14, standard_atomic_weight: 22.009_97, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.second, value: HugeFloat("2.25")))
    public static var oxygen_23:ChemicalElement = ChemicalElement(ChemicalElement.oxygen, neutron_count: 15, standard_atomic_weight: 23.015_70, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("97")))
    public static var oxygen_24:ChemicalElement = ChemicalElement(ChemicalElement.oxygen, neutron_count: 16, standard_atomic_weight: 24.019_86, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("77.4")))
    public static var oxygen_25:ChemicalElement = ChemicalElement(ChemicalElement.oxygen, neutron_count: 17, standard_atomic_weight: 25.029_32, decay_mode: AtomicDecayType.neutron_emission, half_life: TimeUnit(prefix: UnitPrefix.zepto, type: TimeUnitType.second, value: HugeFloat("5.18")))
    public static var oxygen_26:ChemicalElement = ChemicalElement(ChemicalElement.oxygen, neutron_count: 18, standard_atomic_weight: 26.037_21, decay_mode: AtomicDecayType.neutron_emission_2, half_life: TimeUnit(prefix: UnitPrefix.pico, type: TimeUnitType.second, value: HugeFloat("4.2")))
}
