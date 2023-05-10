//
//  AluminiumIsotope.swift
//  
//
//  Created by Evan Anderson on 5/10/23.
//

import Foundation
import huge_numbers

// https://en.wikipedia.org/wiki/Isotopes_of_aluminium
public enum AluminiumIsotope : String, ChemicalElementIsotope {
    case aluminium_22
    case aluminium_23
    case aluminium_24
    case aluminium_25
    case aluminium_26
    case aluminium_27
    case aluminium_28
    case aluminium_29
    case aluminium_30
    case aluminium_31
    case aluminium_32
    case aluminium_33
    case aluminium_34
    case aluminium_35
    case aluminium_36
    case aluminium_37
    case aluminium_38
    case aluminium_39
    case aluminium_40
    case aluminium_41
    case aluminium_42
    case aluminium_43
    
    public var element : ChemicalElement {
        return ChemicalElement.aluminium
    }
    
    public var load_details : ChemicalElementDetails {
        switch self {
        case .aluminium_22:
            return ChemicalElementDetails(self, neutron_count: 9, standard_atomic_weight: 22.019_54, decay_mode: AtomicDecayType.beta_plus_proton_emission, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("91.1")))
        case .aluminium_23:
            return ChemicalElementDetails(self, neutron_count: 10, standard_atomic_weight: 23.007_244_4, decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("470")))
        case .aluminium_24:
            return ChemicalElementDetails(self, neutron_count: 11, standard_atomic_weight: 23.999_947_54, decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: HugeFloat("2.053")))
        case .aluminium_25:
            return ChemicalElementDetails(self, neutron_count: 12, standard_atomic_weight: 24.990_428_31, decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: HugeFloat("7.183")))
        case .aluminium_26:
            return ChemicalElementDetails(self, neutron_count: 13, standard_atomic_weight: 25.986_891_86, decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.year, value: HugeFloat("717000")))
        case .aluminium_27:
            return ChemicalElementDetails(self, neutron_count: 14, standard_atomic_weight: 26.981_538_41)
        case .aluminium_28:
            return ChemicalElementDetails(self, neutron_count: 15, standard_atomic_weight: 27.981_910_09, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.minute, value: HugeFloat("2.245")))
        case .aluminium_29:
            return ChemicalElementDetails(self, neutron_count: 16, standard_atomic_weight: 28.980_453_2, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.minute, value: HugeFloat("6.56")))
        case .aluminium_30:
            return ChemicalElementDetails(self, neutron_count: 17, standard_atomic_weight: 29.982_968, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.second, value: HugeFloat("3.62")))
        case .aluminium_31:
            return ChemicalElementDetails(self, neutron_count: 18, standard_atomic_weight: 30.983_949_8, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("644")))
        case .aluminium_32:
            return ChemicalElementDetails(self, neutron_count: 19, standard_atomic_weight: 31.988_084, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("33.0")))
        case .aluminium_33:
            return ChemicalElementDetails(self, neutron_count: 20, standard_atomic_weight: 32.990_878, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("41.7")))
        case .aluminium_34:
            return ChemicalElementDetails(self, neutron_count: 21, standard_atomic_weight: 33.996_779, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("56.3")))
        case .aluminium_35:
            return ChemicalElementDetails(self, neutron_count: 22, standard_atomic_weight: 34.999_760, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("37.2")))
        case .aluminium_36:
            return ChemicalElementDetails(self, neutron_count: 23, standard_atomic_weight: 36.006_39, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("90")))
        case .aluminium_37:
            return ChemicalElementDetails(self, neutron_count: 24, standard_atomic_weight: 37.010_53, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("11.5")))
        case .aluminium_38:
            return ChemicalElementDetails(self, neutron_count: 25, standard_atomic_weight: 38.017_4, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("9.0")))
        case .aluminium_39:
            return ChemicalElementDetails(self, neutron_count: 26, standard_atomic_weight: 39.022_17, decay_mode: AtomicDecayType.beta_minus_neutron_emission, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("7.6")))
        case .aluminium_40:
            return ChemicalElementDetails(self, neutron_count: 27, standard_atomic_weight: 40.029_62, decay_mode: AtomicDecayType.beta_minus_neutron_emission, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("5.7")))
        case .aluminium_41:
            return ChemicalElementDetails(self, neutron_count: 28, standard_atomic_weight: 41.035_88, decay_mode: AtomicDecayType.beta_minus_neutron_emission, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("3.5")))
        case .aluminium_42:
            return ChemicalElementDetails(self, neutron_count: 29, standard_atomic_weight: 42.043_05, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: HugeFloat("171")))
        case .aluminium_43:
            return ChemicalElementDetails(self, neutron_count: 30, standard_atomic_weight: 43.050_48, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: HugeFloat("171")))
        }
    }
}
