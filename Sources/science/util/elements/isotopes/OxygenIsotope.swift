//
//  OxygenIsotope.swift
//  
//
//  Created by Evan Anderson on 4/30/23.
//

import Foundation
import huge_numbers

// https://en.wikipedia.org/wiki/Isotopes_of_oxygen
public enum OxygenIsotope : String, ChemicalElementIsotope {
    case oxygen_11
    case oxygen_12
    case oxygen_13
    case oxygen_14
    case oxygen_15
    case oxygen_16
    case oxygen_17
    case oxygen_18
    case oxygen_19
    case oxygen_20
    case oxygen_21
    case oxygen_22
    case oxygen_23
    case oxygen_24
    case oxygen_25
    case oxygen_26
    
    public var element : ChemicalElement {
        return ChemicalElement.oxygen
    }
    public var load_details : ChemicalElementDetails {
        switch self {
        case .oxygen_11:
            return ChemicalElementDetails(self, neutron_count: 3, standard_atomic_weight: 11.051_25, decay_mode: AtomicDecayType.proton_emission(amount: 2), half_life: TimeUnit(prefix: UnitPrefix.yocto, type: TimeUnitType.second, value: HugeFloat("198")))
        case .oxygen_12:
            return ChemicalElementDetails(self, neutron_count: 4, standard_atomic_weight: 12.034_368, decay_mode: AtomicDecayType.proton_emission(amount: 2), half_life: TimeUnit(prefix: UnitPrefix.zepto, type: TimeUnitType.second, value: HugeFloat("8.9")))
        case .oxygen_13:
            return ChemicalElementDetails(self, neutron_count: 5, standard_atomic_weight: 13.024_815, decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("8.58")))
        case .oxygen_14:
            return ChemicalElementDetails(self, neutron_count: 6, standard_atomic_weight: 13.008_596_706, decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: HugeFloat("70.621")))
        case .oxygen_15:
            return ChemicalElementDetails(self, neutron_count: 7, standard_atomic_weight: 15.003_065_6, decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: HugeFloat("122.266")))
        case .oxygen_16:
            return ChemicalElementDetails(self, neutron_count: 8, standard_atomic_weight: 15.994_914_619_257)
        case .oxygen_17:
            return ChemicalElementDetails(self, neutron_count: 9, standard_atomic_weight: 16.999_131_755_953)
        case .oxygen_18:
            return ChemicalElementDetails(self, neutron_count: 10, standard_atomic_weight: 17.999_159_612_136)
        case .oxygen_19:
            return ChemicalElementDetails(self, neutron_count: 11, standard_atomic_weight: 19.003_578_0, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.second, value: HugeFloat("26.470")))
        case .oxygen_20:
            return ChemicalElementDetails(self, neutron_count: 12, standard_atomic_weight: 20.004_075_4, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.second, value: HugeFloat("12.51")))
        case .oxygen_21:
            return ChemicalElementDetails(self, neutron_count: 13, standard_atomic_weight: 21.008_655, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.second, value: HugeFloat("3.42")))
        case .oxygen_22:
            return ChemicalElementDetails(self, neutron_count: 14, standard_atomic_weight: 22.009_97, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.second, value: HugeFloat("2.25")))
        case .oxygen_23:
            return ChemicalElementDetails(self, neutron_count: 15, standard_atomic_weight: 23.015_70, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("97")))
        case .oxygen_24:
            return ChemicalElementDetails(self, neutron_count: 16, standard_atomic_weight: 24.019_86, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("77.4")))
        case .oxygen_25:
            return ChemicalElementDetails(self, neutron_count: 17, standard_atomic_weight: 25.029_32, decay_mode: AtomicDecayType.neutron_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.zepto, type: TimeUnitType.second, value: HugeFloat("5.18")))
        case .oxygen_26:
            return ChemicalElementDetails(self, neutron_count: 18, standard_atomic_weight: 26.037_21, decay_mode: AtomicDecayType.neutron_emission(amount: 2), half_life: TimeUnit(prefix: UnitPrefix.pico, type: TimeUnitType.second, value: HugeFloat("4.2")))
        }
    }
}
