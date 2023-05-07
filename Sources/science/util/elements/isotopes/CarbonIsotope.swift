//
//  CarbonIsotope.swift
//  
//
//  Created by Evan Anderson on 5/1/23.
//

import Foundation
import huge_numbers

// https://en.wikipedia.org/wiki/Isotopes_of_carbon
public enum CarbonIsotope {
    public static var carbon_8:ChemicalElement =  ChemicalElement(ChemicalElement.carbon, neutron_count: 2, standard_atomic_weight: 8.036_643, decay_mode: AtomicDecayType.proton_emission_2, half_life: TimeUnit(prefix: UnitPrefix.zepto, type: TimeUnitType.second, value: HugeFloat("3.5")))
    public static var carbon_9:ChemicalElement =  ChemicalElement(ChemicalElement.carbon, neutron_count: 3, standard_atomic_weight: 9.031_0372, decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("126.5")))
    public static var carbon_10:ChemicalElement = ChemicalElement(ChemicalElement.carbon, neutron_count: 4, standard_atomic_weight: 10.016_853_22, decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: HugeFloat("19.3011")))
    public static var carbon_11:ChemicalElement = ChemicalElement(ChemicalElement.carbon, neutron_count: 5, standard_atomic_weight: 11.011_432_60, decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.minute, value: HugeFloat("20.3402")))
    public static var carbon_12:ChemicalElement = ChemicalElement(ChemicalElement.carbon, neutron_count: 6, standard_atomic_weight: 12)
    public static var carbon_13:ChemicalElement = ChemicalElement(ChemicalElement.carbon, neutron_count: 7, standard_atomic_weight: 13.003_354_835_336)
    public static var carbon_14:ChemicalElement = ChemicalElement(ChemicalElement.carbon, neutron_count: 8, standard_atomic_weight: 14.003_241_989, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.year, value: HugeFloat("570")))
    public static var carbon_15:ChemicalElement = ChemicalElement(ChemicalElement.carbon, neutron_count: 9, standard_atomic_weight: 15.010_599_3, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.second, value: HugeFloat("2.449")))
    public static var carbon_16:ChemicalElement = ChemicalElement(ChemicalElement.carbon, neutron_count: 10, standard_atomic_weight: 16.014_701, decay_mode: AtomicDecayType.beta_minus_neutron_emission, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("750")))
    public static var carbon_17:ChemicalElement = ChemicalElement(ChemicalElement.carbon, neutron_count: 11, standard_atomic_weight: 17.022_579, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("193")))
    public static var carbon_18:ChemicalElement = ChemicalElement(ChemicalElement.carbon, neutron_count: 12, standard_atomic_weight: 18.026_75, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("92")))
    public static var carbon_19:ChemicalElement = ChemicalElement(ChemicalElement.carbon, neutron_count: 13, standard_atomic_weight: 19.034_80, decay_mode: AtomicDecayType.beta_minus_neutron_emission, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("46.2")))
    public static var carbon_20:ChemicalElement = ChemicalElement(ChemicalElement.carbon, neutron_count: 14, standard_atomic_weight: 20.040_26, decay_mode: AtomicDecayType.beta_minus_neutron_emission, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("16")))
    public static var carbon_21:ChemicalElement = ChemicalElement(ChemicalElement.carbon, neutron_count: 15, standard_atomic_weight: 21.049_00, decay_mode: AtomicDecayType.neutron_emission, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: HugeFloat("29")))
    public static var carbon_22:ChemicalElement = ChemicalElement(ChemicalElement.carbon, neutron_count: 16, standard_atomic_weight: 22.057_55, decay_mode: AtomicDecayType.beta_minus_neutron_emission, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("6.2")))
    public static var carbon_23:ChemicalElement = ChemicalElement(ChemicalElement.carbon, neutron_count: 17, standard_atomic_weight: 23.068_89, decay_mode: AtomicDecayType.neutron_emission, half_life: nil) // TODO: fix
}
