//
//  MagnesiumIsotope.swift
//  
//
//  Created by Evan Anderson on 5/10/23.
//

import Foundation
import huge_numbers

// https://en.wikipedia.org/wiki/Isotopes_of_magnesium
public enum MagnesiumIsotope : String, ChemicalElementIsotope {
    case magnesium_18
    case magnesium_19
    case magnesium_20
    case magnesium_21
    case magnesium_22
    case magnesium_23
    case magnesium_24
    case magnesium_25
    case magnesium_26
    case magnesium_27
    case magnesium_28
    case magnesium_29
    case magnesium_30
    case magnesium_31
    case magnesium_32
    case magnesium_33
    case magnesium_34
    case magnesium_35
    case magnesium_36
    case magnesium_37
    case magnesium_38
    case magnesium_40
    
    public var element : ChemicalElement {
        return ChemicalElement.magnesium
    }
    
    public var load_details : ChemicalElementDetails {
        switch self {
        case .magnesium_18:
            return ChemicalElementDetails(self, neutron_count: 6, standard_atomic_weight: 0, decay_mode: AtomicDecayType.proton_emission(amount: 2), half_life: nil) // TODO: fix
        case .magnesium_19:
            return ChemicalElementDetails(self, neutron_count: 7, standard_atomic_weight: 19.034_180, decay_mode: AtomicDecayType.proton_emission(amount: 2), half_life: TimeUnit(prefix: UnitPrefix.pico, type: TimeUnitType.second, value: HugeFloat("5")))
        case .magnesium_20:
            return ChemicalElementDetails(self, neutron_count: 8, standard_atomic_weight: 20.018_763_1, decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("90.4")))
        case .magnesium_21:
            return ChemicalElementDetails(self, neutron_count: 9, standard_atomic_weight: 21.011_705_8, decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("120.0")))
        case .magnesium_22:
            return ChemicalElementDetails(self, neutron_count: 10, standard_atomic_weight: 21.999_570_60, decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: HugeFloat("3.8745")))
        case .magnesium_23:
            return ChemicalElementDetails(self, neutron_count: 11, standard_atomic_weight: 22.994_123_77, decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: HugeFloat("11.3039")))
        case .magnesium_24:
            return ChemicalElementDetails(self, neutron_count: 12, standard_atomic_weight: 23.985_041_689)
        case .magnesium_25:
            return ChemicalElementDetails(self, neutron_count: 13, standard_atomic_weight: 24.985_836_97)
        case .magnesium_26:
            return ChemicalElementDetails(self, neutron_count: 14, standard_atomic_weight: 25.982_592_97)
        case .magnesium_27:
            return ChemicalElementDetails(self, neutron_count: 15, standard_atomic_weight: 26.984_340_65, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.minute, value: HugeFloat("9.435")))
        case .magnesium_28:
            return ChemicalElementDetails(self, neutron_count: 16, standard_atomic_weight: 27.983_875_43, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.hour, value: HugeFloat("20.915")))
        case .magnesium_29:
            return ChemicalElementDetails(self, neutron_count: 17, standard_atomic_weight: 28.988_607_2, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.second, value: HugeFloat("1.30")))
        case .magnesium_30:
            return ChemicalElementDetails(self, neutron_count: 18, standard_atomic_weight: 29.990_465_5, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("317")))
        case .magnesium_31:
            return ChemicalElementDetails(self, neutron_count: 19, standard_atomic_weight: 30.996_648, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("270")))
        case .magnesium_32:
            return ChemicalElementDetails(self, neutron_count: 20, standard_atomic_weight: 31.999_110, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("80.4")))
        case .magnesium_33:
            return ChemicalElementDetails(self, neutron_count: 21, standard_atomic_weight: 33.005_327_9, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("92.0")))
        case .magnesium_34:
            return ChemicalElementDetails(self, neutron_count: 22, standard_atomic_weight: 34.008_935, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("44.9")))
        case .magnesium_35:
            return ChemicalElementDetails(self, neutron_count: 23, standard_atomic_weight: 35.016_79, decay_mode: AtomicDecayType.beta_minus_neutron_emission, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("11.3")))
        case .magnesium_36:
            return ChemicalElementDetails(self, neutron_count: 24, standard_atomic_weight: 36.021_88, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("3.9")))
        case .magnesium_37:
            return ChemicalElementDetails(self, neutron_count: 25, standard_atomic_weight: 37.030_29, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("8")))
        case .magnesium_38:
            return ChemicalElementDetails(self, neutron_count: 26, standard_atomic_weight: 38.036_58, decay_mode: AtomicDecayType.beta_minus_neutron_emission, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("3.1")))
        case .magnesium_40:
            return ChemicalElementDetails(self, neutron_count: 27, standard_atomic_weight: 40.053_19, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: HugeFloat("171")))
        }
    }
}
