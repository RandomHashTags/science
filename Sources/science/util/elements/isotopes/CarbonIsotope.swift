//
//  CarbonIsotope.swift
//  
//
//  Created by Evan Anderson on 5/1/23.
//

import Foundation
import huge_numbers

// https://en.wikipedia.org/wiki/Isotopes_of_carbon
public enum CarbonIsotope : String, ChemicalElementIsotope {
    case carbon_8
    case carbon_9
    case carbon_10
    case carbon_11
    case carbon_12
    case carbon_13
    case carbon_14
    case carbon_15
    case carbon_16
    case carbon_17
    case carbon_18
    case carbon_19
    case carbon_20
    case carbon_21
    case carbon_22
    case carbon_23
    
    public var element : ChemicalElement {
        return ChemicalElement.carbon
    }
    
    public var load_details : ChemicalElementDetails {
        switch self {
        case .carbon_8:
            return ChemicalElementDetails(self, neutron_count: 2, standard_atomic_weight: 8.036_643, decay_mode: AtomicDecayType.proton_emission(amount: 2), half_life: TimeUnit(prefix: UnitPrefix.zepto, type: TimeUnitType.second, value: HugeFloat("3.5")))
        case .carbon_9:
            return ChemicalElementDetails(self, neutron_count: 3, standard_atomic_weight: 9.031_0372, decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("126.5")))
        case .carbon_10:
            return ChemicalElementDetails(self, neutron_count: 4, standard_atomic_weight: 10.016_853_22, decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: HugeFloat("19.3011")))
        case .carbon_11:
            return ChemicalElementDetails(self, neutron_count: 5, standard_atomic_weight: 11.011_432_60, decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.minute, value: HugeFloat("20.3402")))
        case .carbon_12:
            return ChemicalElementDetails(self, neutron_count: 6, standard_atomic_weight: 12)
        case .carbon_13:
            return ChemicalElementDetails(self, neutron_count: 7, standard_atomic_weight: 13.003_354_835_336)
        case .carbon_14:
            return ChemicalElementDetails(self, neutron_count: 8, standard_atomic_weight: 14.003_241_989, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.year, value: HugeFloat("570")))
        case .carbon_15:
            return ChemicalElementDetails(self, neutron_count: 9, standard_atomic_weight: 15.010_599_3, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.second, value: HugeFloat("2.449")))
        case .carbon_16:
            return ChemicalElementDetails(self, neutron_count: 10, standard_atomic_weight: 16.014_701, decay_mode: AtomicDecayType.beta_minus_neutron_emission, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("750")))
        case .carbon_17:
            return ChemicalElementDetails(self, neutron_count: 11, standard_atomic_weight: 17.022_579, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("193")))
        case .carbon_18:
            return ChemicalElementDetails(self, neutron_count: 12, standard_atomic_weight: 18.026_75, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("92")))
        case .carbon_19:
            return ChemicalElementDetails(self, neutron_count: 13, standard_atomic_weight: 19.034_80, decay_mode: AtomicDecayType.beta_minus_neutron_emission, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("46.2")))
        case .carbon_20:
            return ChemicalElementDetails(self, neutron_count: 14, standard_atomic_weight: 20.040_26, decay_mode: AtomicDecayType.beta_minus_neutron_emission, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("16")))
        case .carbon_21:
            return ChemicalElementDetails(self, neutron_count: 15, standard_atomic_weight: 21.049_00, decay_mode: AtomicDecayType.neutron_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: HugeFloat("29")))
        case .carbon_22:
            return ChemicalElementDetails(self, neutron_count: 16, standard_atomic_weight: 22.057_55, decay_mode: AtomicDecayType.beta_minus_neutron_emission, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("6.2")))
        case .carbon_23:
            return ChemicalElementDetails(self, neutron_count: 17, standard_atomic_weight: 23.068_89, decay_mode: AtomicDecayType.neutron_emission(amount: 1), half_life: nil) // TODO: fix
        }
    }
}
