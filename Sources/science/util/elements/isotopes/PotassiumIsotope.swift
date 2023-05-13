//
//  PotassiumIsotope.swift
//  
//
//  Created by Evan Anderson on 5/13/23.
//

import Foundation

// https://en.wikipedia.org/wiki/Isotopes_of_potassium
public enum PotassiumIsotope : String, ChemicalElementIsotope {
    case potassium_31
    case potassium_33
    case potassium_34
    case potassium_35
    case potassium_36
    case potassium_37
    case potassium_38
    case potassium_38_isomer_1
    case potassium_38_isomer_2
    case potassium_39
    case potassium_40
    case potassium_40_isomer_1
    case potassium_41
    case potassium_42
    case potassium_43
    case potassium_43_isomer_1
    case potassium_44
    case potassium_45
    case potassium_46
    case potassium_47
    case potassium_48
    case potassium_49
    case potassium_50
    case potassium_50_isomer_1
    case potassium_51
    case potassium_52
    case potassium_53
    case potassium_54
    case potassium_55
    case potassium_56
    case potassium_57
    case potassium_59
    
    public var element : ChemicalElement {
        return ChemicalElement.potassium
    }
    
    public var load_details : ChemicalElementDetails {
        switch self {
        case .potassium_31:
            return ChemicalElementDetails(self, neutron_count: 12, standard_atomic_weight: "0", decay_mode: AtomicDecayType.proton_emission(amount: 3), half_life: TimeUnit(prefix: UnitPrefix.pico, type: TimeUnitType.second, value: "9"))
        case .potassium_33:
            return ChemicalElementDetails(self, neutron_count: 14, standard_atomic_weight: "33.00756", decay_mode: AtomicDecayType.proton_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "24"))
        case .potassium_34:
            return ChemicalElementDetails(self, neutron_count: 15, standard_atomic_weight: "33.99869", decay_mode: AtomicDecayType.proton_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "39"))
        case .potassium_35:
            return ChemicalElementDetails(self, neutron_count: 16, standard_atomic_weight: "34.9880054", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "178"))
        case .potassium_36:
            return ChemicalElementDetails(self, neutron_count: 17, standard_atomic_weight: "35.9813020", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "341"))
        case .potassium_37:
            return ChemicalElementDetails(self, neutron_count: 18, standard_atomic_weight: "36.97337589", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "1.2365"))
        case .potassium_38:
            return ChemicalElementDetails(self, neutron_count: 19, standard_atomic_weight: "37.96908112", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.minute, value: "7.636"))
        case .potassium_38_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 19, standard_atomic_weight: "37.96908112", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "924.46"))
        case .potassium_38_isomer_2:
            return ChemicalElementDetails(self, neutron_count: 19, standard_atomic_weight: "37.96908112", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "21.95"))
        case .potassium_39:
            return ChemicalElementDetails(self, neutron_count: 20, standard_atomic_weight: "38.963706487")
        case .potassium_40:
            return ChemicalElementDetails(self, neutron_count: 21, standard_atomic_weight: "39.96399817", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.year, value: "1.248"))
        case .potassium_40_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 21, standard_atomic_weight: "39.96399817", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "336"))
        case .potassium_41:
            return ChemicalElementDetails(self, neutron_count: 22, standard_atomic_weight: "40.961825258")
        case .potassium_42:
            return ChemicalElementDetails(self, neutron_count: 23, standard_atomic_weight: "41.96240231", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.hour, value: "12.355"))
        case .potassium_43:
            return ChemicalElementDetails(self, neutron_count: 24, standard_atomic_weight: "42.9607347", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.hour, value: "22.3"))
        case .potassium_43_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 24, standard_atomic_weight: "42.9607347", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "200"))
        case .potassium_44:
            return ChemicalElementDetails(self, neutron_count: 25, standard_atomic_weight: "43.9615870", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.minute, value: "22.13"))
        case .potassium_45:
            return ChemicalElementDetails(self, neutron_count: 26, standard_atomic_weight: "44.9606915", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.minute, value: "17.8"))
        case .potassium_46:
            return ChemicalElementDetails(self, neutron_count: 27, standard_atomic_weight: "45.9619816", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.second, value: "105"))
        case .potassium_47:
            return ChemicalElementDetails(self, neutron_count: 28, standard_atomic_weight: "46.9616616", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.second, value: "17.50"))
        case .potassium_48:
            return ChemicalElementDetails(self, neutron_count: 29, standard_atomic_weight: "47.9653412", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.second, value: "6.8"))
        case .potassium_49:
            return ChemicalElementDetails(self, neutron_count: 30, standard_atomic_weight: "48.9682108", decay_mode: AtomicDecayType.beta_minus_neutron_emission, half_life: TimeUnit(type: TimeUnitType.second, value: "1.26"))
        case .potassium_50:
            return ChemicalElementDetails(self, neutron_count: 31, standard_atomic_weight: "49.972380", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "472"))
        case .potassium_50_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 31, standard_atomic_weight: "49.972380", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "125"))
        case .potassium_51:
            return ChemicalElementDetails(self, neutron_count: 32, standard_atomic_weight: "50.975828", decay_mode: AtomicDecayType.beta_minus_neutron_emission, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "365"))
        case .potassium_52:
            return ChemicalElementDetails(self, neutron_count: 33, standard_atomic_weight: "51.98160", decay_mode: AtomicDecayType.beta_minus_neutron_emission, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "110"))
        case .potassium_53:
            return ChemicalElementDetails(self, neutron_count: 34, standard_atomic_weight: "52.98680", decay_mode: AtomicDecayType.beta_minus_neutron_emission, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "30"))
        case .potassium_54:
            return ChemicalElementDetails(self, neutron_count: 35, standard_atomic_weight: "53.99463", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "10"))
        case .potassium_55:
            return ChemicalElementDetails(self, neutron_count: 36, standard_atomic_weight: "55.00076", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "3"))
        case .potassium_56:
            return ChemicalElementDetails(self, neutron_count: 37, standard_atomic_weight: "56.00851", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "1"))
        case .potassium_57:
            return ChemicalElementDetails(self, neutron_count: 38, standard_atomic_weight: "0", decay_mode: AtomicDecayType.beta_minus, half_life: nil) // TODO: fix
        case .potassium_59:
            return ChemicalElementDetails(self, neutron_count: 40, standard_atomic_weight: "0", decay_mode: AtomicDecayType.beta_minus, half_life: nil) // TODO: fix
        }
    }
}
