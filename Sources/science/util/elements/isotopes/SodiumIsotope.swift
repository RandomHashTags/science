//
//  SodiumIsotope.swift
//  
//
//  Created by Evan Anderson on 5/8/23.
//

import Foundation
import huge_numbers

// https://en.wikipedia.org/wiki/Isotopes_of_sodium
public enum SodiumIsotope : String, ChemicalElementIsotope {
    case sodium_17
    case sodium_18
    case sodium_19
    case sodium_20
    case sodium_21
    case sodium_22
    case sodium_23
    case sodium_24
    case sodium_25
    case sodium_26
    case sodium_27
    case sodium_28
    case sodium_29
    case sodium_30
    case sodium_31
    case sodium_32
    case sodium_33
    case sodium_34
    case sodium_35
    case sodium_37
    case sodium_39
    
    public var element : ChemicalElement {
        return ChemicalElement.sodium
    }
    
    public var load_details : ChemicalElementDetails {
        switch self {
        case .sodium_17:
            return ChemicalElementDetails(self, neutron_count: 6, standard_atomic_weight: 17.037_270, decay_mode: AtomicDecayType.proton_emission(amount: 1), half_life: nil) // TODO: fix
        case .sodium_18:
            return ChemicalElementDetails(self, neutron_count: 7, standard_atomic_weight: 18.026_88, decay_mode: AtomicDecayType.proton_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.zepto, type: TimeUnitType.second, value: HugeFloat("1.3")))
        case .sodium_19:
            return ChemicalElementDetails(self, neutron_count: 8, standard_atomic_weight: 19.013_880, decay_mode: AtomicDecayType.proton_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.atto, type: TimeUnitType.second, value: HugeFloat("2")))
        case .sodium_20:
            return ChemicalElementDetails(self, neutron_count: 9, standard_atomic_weight: 20.007_354_3, decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("447.9")))
        case .sodium_21:
            return ChemicalElementDetails(self, neutron_count: 10, standard_atomic_weight: 20.997_654_46, decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: HugeFloat("22.4550")))
        case .sodium_22:
            return ChemicalElementDetails(self, neutron_count: 11, standard_atomic_weight: 21.994_437_42, decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.year, value: HugeFloat("2.6019"))) // TODO: fix (in tropical years)
        case .sodium_23:
            return ChemicalElementDetails(self, neutron_count: 12, standard_atomic_weight: 22.989_769_282_0)
        case .sodium_24:
            return ChemicalElementDetails(self, neutron_count: 13, standard_atomic_weight: 23.990_963_012, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.hour, value: HugeFloat("14.9560")))
        case .sodium_25:
            return ChemicalElementDetails(self, neutron_count: 14, standard_atomic_weight: 24.989_954_0, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.second, value: HugeFloat("59.1")))
        case .sodium_26:
            return ChemicalElementDetails(self, neutron_count: 15, standard_atomic_weight: 25.992_635, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.second, value: HugeFloat("1.07128")))
        case .sodium_27:
            return ChemicalElementDetails(self, neutron_count: 16, standard_atomic_weight: 26.994_076, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("301")))
        case .sodium_28:
            return ChemicalElementDetails(self, neutron_count: 17, standard_atomic_weight: 27.998_939, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("33.1")))
        case .sodium_29:
            return ChemicalElementDetails(self, neutron_count: 18, standard_atomic_weight: 29.002_877, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("43.2")))
        case .sodium_30:
            return ChemicalElementDetails(self, neutron_count: 19, standard_atomic_weight: 30.009_098, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("45.9")))
        case .sodium_31:
            return ChemicalElementDetails(self, neutron_count: 20, standard_atomic_weight: 31.013_147, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("16.8")))
        case .sodium_32:
            return ChemicalElementDetails(self, neutron_count: 21, standard_atomic_weight: 32.020_010, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("12.9")))
        case .sodium_33:
            return ChemicalElementDetails(self, neutron_count: 22, standard_atomic_weight: 33.025_53, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("8.2")))
        case .sodium_34:
            return ChemicalElementDetails(self, neutron_count: 23, standard_atomic_weight: 34.034_01, decay_mode: AtomicDecayType.beta_minus_neutron_emission, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("5.5"))) // TODO: 2 neutron emission
        case .sodium_35:
            return ChemicalElementDetails(self, neutron_count: 24, standard_atomic_weight: 35.040_61, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("1.5")))
        case .sodium_37:
            return ChemicalElementDetails(self, neutron_count: 26, standard_atomic_weight: 37.057_04, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: HugeFloat("1.6")))
        case .sodium_39:
            return ChemicalElementDetails(self, neutron_count: 28, standard_atomic_weight: 39.075, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: HugeFloat("401")))
        }
    }
}
