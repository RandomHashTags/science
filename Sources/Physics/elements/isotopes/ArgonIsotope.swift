//
//  ArgonIsotope.swift
//  
//
//  Created by Evan Anderson on 5/13/23.
//

import Foundation
import SwiftUnits

// https://en.wikipedia.org/wiki/Isotopes_of_argon
public enum ArgonIsotope : String, ChemicalElementIsotope {
    case argon_29
    case argon_30
    case argon_31
    case argon_32
    case argon_32_isomer_1
    case argon_33
    case argon_34
    case argon_35
    case argon_36
    case argon_37
    case argon_38
    case argon_39
    case argon_40
    case argon_41
    case argon_42
    case argon_43
    case argon_44
    case argon_45
    case argon_46
    case argon_47
    case argon_48
    case argon_49
    case argon_50
    case argon_51
    case argon_52
    case argon_53
    case argon_54
    
    public var element : ChemicalElement {
        return ChemicalElement.argon
    }
    
    public var load_details : ChemicalElementDetails {
        switch self {
        case .argon_29:
            return ChemicalElementDetails(self, neutron_count: 11, standard_atomic_weight: "0", decay_mode: AtomicDecayType.proton_emission(amount: 2), half_life: TimeUnit(type: TimeUnitType.second, value: "0.00000000000000000004")) // TODO: fix
        case .argon_30:
            return ChemicalElementDetails(self, neutron_count: 12, standard_atomic_weight: "30.02247", decay_mode: AtomicDecayType.proton_emission(amount: 2), half_life: TimeUnit(prefix: UnitPrefix.pico, type: TimeUnitType.second, value: "9"))
        case .argon_31:
            return ChemicalElementDetails(self, neutron_count: 13, standard_atomic_weight: "31.01216", decay_mode: AtomicDecayType.beta_plus_proton_emission, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "15.1"))
        case .argon_32:
            return ChemicalElementDetails(self, neutron_count: 14, standard_atomic_weight: "31.9976378", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "98"))
        case .argon_32_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 14, standard_atomic_weight: "31.9976378", decay_mode: nil, half_life: nil) // TODO: fix
        case .argon_33:
            return ChemicalElementDetails(self, neutron_count: 15, standard_atomic_weight: "32.9899255", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "173.0"))
        case .argon_34:
            return ChemicalElementDetails(self, neutron_count: 16, standard_atomic_weight: "33.98027009", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "843.8"))
        case .argon_35:
            return ChemicalElementDetails(self, neutron_count: 17, standard_atomic_weight: "34.9752577", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "1.7756"))
        case .argon_36:
            return ChemicalElementDetails(self, neutron_count: 18, standard_atomic_weight: "35.967545105")
        case .argon_37:
            return ChemicalElementDetails(self, neutron_count: 19, standard_atomic_weight: "36.96677631", decay_mode: AtomicDecayType.electron_capture(amount: 1), half_life: TimeUnit(type: TimeUnitType.day, value: "35.011"))
        case .argon_38:
            return ChemicalElementDetails(self, neutron_count: 20, standard_atomic_weight: "37.96273210")
        case .argon_39:
            return ChemicalElementDetails(self, neutron_count: 21, standard_atomic_weight: "38.964313", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.year, value: "268"))
        case .argon_40:
            return ChemicalElementDetails(self, neutron_count: 22, standard_atomic_weight: "39.9623831238")
        case .argon_41:
            return ChemicalElementDetails(self, neutron_count: 23, standard_atomic_weight: "40.9645006", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.minute, value: "109.61"))
        case .argon_42:
            return ChemicalElementDetails(self, neutron_count: 24, standard_atomic_weight: "41.963046", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.year, value: "32.9"))
        case .argon_43:
            return ChemicalElementDetails(self, neutron_count: 25, standard_atomic_weight: "42.965636", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.minute, value: "5.37"))
        case .argon_44:
            return ChemicalElementDetails(self, neutron_count: 26, standard_atomic_weight: "43.9649238", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.minute, value: "11.87"))
        case .argon_45:
            return ChemicalElementDetails(self, neutron_count: 27, standard_atomic_weight: "44.9680397", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "21.48"))
        case .argon_46:
            return ChemicalElementDetails(self, neutron_count: 28, standard_atomic_weight: "45.9680374", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "8.4"))
        case .argon_47:
            return ChemicalElementDetails(self, neutron_count: 29, standard_atomic_weight: "46.9727681", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "1.23"))
        case .argon_48:
            return ChemicalElementDetails(self, neutron_count: 30, standard_atomic_weight: "47.97608", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "415"))
        case .argon_49:
            return ChemicalElementDetails(self, neutron_count: 31, standard_atomic_weight: "48.98155", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "236"))
        case .argon_50:
            return ChemicalElementDetails(self, neutron_count: 32, standard_atomic_weight: "49.98569", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "106"))
        case .argon_51:
            return ChemicalElementDetails(self, neutron_count: 33, standard_atomic_weight: "50.99280", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "60"))
        case .argon_52:
            return ChemicalElementDetails(self, neutron_count: 34, standard_atomic_weight: "51.99863", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "10"))
        case .argon_53:
            return ChemicalElementDetails(self, neutron_count: 35, standard_atomic_weight: "53.00729", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "3"))
        case .argon_54:
            return ChemicalElementDetails(self, neutron_count: 36, standard_atomic_weight: "0", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: nil) // TODO: fix
        }
    }
}
