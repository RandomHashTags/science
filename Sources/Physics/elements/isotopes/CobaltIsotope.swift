//
//  CobaltIsotope.swift
//  
//
//  Created by Evan Anderson on 5/15/23.
//

import Foundation
import SwiftUnits

public enum CobaltIsotope : String, ChemicalElementIsotope {
    case cobalt_47
    case cobalt_48
    case cobalt_49
    case cobalt_50
    case cobalt_51
    case cobalt_52
    case cobalt_52_isomer_1
    case cobalt_53
    case cobalt_53_isomer_1
    case cobalt_54
    case cobalt_54_isomer_1
    case cobalt_55
    case cobalt_56
    case cobalt_57
    case cobalt_58
    case cobalt_58_isomer_1
    case cobalt_58_isomer_2
    case cobalt_59
    case cobalt_60
    case cobalt_60_isomer_1
    case cobalt_61
    case cobalt_62
    case cobalt_62_isomer_1
    case cobalt_63
    case cobalt_64
    case cobalt_65
    case cobalt_66
    case cobalt_66_isomer_1
    case cobalt_66_isomer_2
    case cobalt_67
    case cobalt_68
    case cobalt_68_isomer_1
    case cobalt_69
    case cobalt_70
    case cobalt_70_isomer_1
    case cobalt_71
    case cobalt_72
    case cobalt_73
    case cobalt_74
    case cobalt_75
    
    public var element : ChemicalElement {
        return ChemicalElement.cobalt
    }
    
    public var load_details : ChemicalElementDetails {
        switch self {
        case .cobalt_47:
            return ChemicalElementDetails(self, neutron_count: 20, standard_atomic_weight: "47.01149", decay_mode: nil, half_life: nil) // TODO: fix
        case .cobalt_48:
            return ChemicalElementDetails(self, neutron_count: 21, standard_atomic_weight: "48.00176", decay_mode: AtomicDecayType.proton_emission(amount: 1), half_life: nil) // TODO: fix
        case .cobalt_49:
            return ChemicalElementDetails(self, neutron_count: 22, standard_atomic_weight: "48.98972", decay_mode: AtomicDecayType.proton_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "34"))
        case .cobalt_50:
            return ChemicalElementDetails(self, neutron_count: 23, standard_atomic_weight: "49.98154", decay_mode: AtomicDecayType.beta_plus_proton_emission, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "44"))
        case .cobalt_51:
            return ChemicalElementDetails(self, neutron_count: 24, standard_atomic_weight: "50.97072", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "60"))
        case .cobalt_52:
            return ChemicalElementDetails(self, neutron_count: 25, standard_atomic_weight: "51.96359", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "115"))
        case .cobalt_52_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 25, standard_atomic_weight: "51.96359", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "104"))
        case .cobalt_53:
            return ChemicalElementDetails(self, neutron_count: 26, standard_atomic_weight: "52.954219", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "242"))
        case .cobalt_53_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 26, standard_atomic_weight: "52.954219", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "247"))
        case .cobalt_54:
            return ChemicalElementDetails(self, neutron_count: 27, standard_atomic_weight: "53.9484596", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "193.28"))
        case .cobalt_54_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 27, standard_atomic_weight: "53.9484596", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.minute, value: "1.48"))
        case .cobalt_55:
            return ChemicalElementDetails(self, neutron_count: 28, standard_atomic_weight: "54.9419990", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.hour, value: "17.53"))
        case .cobalt_56:
            return ChemicalElementDetails(self, neutron_count: 29, standard_atomic_weight: "55.9398393", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.day, value: "77.233"))
        case .cobalt_57:
            return ChemicalElementDetails(self, neutron_count: 30, standard_atomic_weight: "56.9362914", decay_mode: AtomicDecayType.electron_capture(amount: 1), half_life: TimeUnit(type: TimeUnitType.day, value: "271.74"))
        case .cobalt_58:
            return ChemicalElementDetails(self, neutron_count: 31, standard_atomic_weight: "57.9357528", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.day, value: "70.86"))
        case .cobalt_58_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 31, standard_atomic_weight: "57.9357528", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(type: TimeUnitType.hour, value: "9.04"))
        case .cobalt_58_isomer_2:
            return ChemicalElementDetails(self, neutron_count: 31, standard_atomic_weight: "57.9357528", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "10.4")) // TODO: fix
        case .cobalt_59:
            return ChemicalElementDetails(self, neutron_count: 32, standard_atomic_weight: "58.9331950")
        case .cobalt_60:
            return ChemicalElementDetails(self, neutron_count: 33, standard_atomic_weight: "59.9338171", decay_mode: AtomicDecayType.beta_minus_gamma, half_life: TimeUnit(type: TimeUnitType.year, value: "5.2713"))
        case .cobalt_60_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 33, standard_atomic_weight: "59.9338171", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(type: TimeUnitType.minute, value: "10.467"))
        case .cobalt_61:
            return ChemicalElementDetails(self, neutron_count: 34, standard_atomic_weight: "60.9324758", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.hour, value: "1.650"))
        case .cobalt_62:
            return ChemicalElementDetails(self, neutron_count: 35, standard_atomic_weight: "61.934051", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.minute, value: "1.50"))
        case .cobalt_62_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 35, standard_atomic_weight: "61.934051", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.minute, value: "13.91"))
        case .cobalt_63:
            return ChemicalElementDetails(self, neutron_count: 36, standard_atomic_weight: "62.933612", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "26.9"))
        case .cobalt_64:
            return ChemicalElementDetails(self, neutron_count: 37, standard_atomic_weight: "63.935810", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "0.30"))
        case .cobalt_65:
            return ChemicalElementDetails(self, neutron_count: 38, standard_atomic_weight: "64.936478", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "1.20"))
        case .cobalt_66:
            return ChemicalElementDetails(self, neutron_count: 39, standard_atomic_weight: "65.93976", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "0.18"))
        case .cobalt_66_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 39, standard_atomic_weight: "65.93976", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "1.21")) // TODO: fix
        case .cobalt_66_isomer_2:
            return ChemicalElementDetails(self, neutron_count: 39, standard_atomic_weight: "65.93976", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "101")) // TODO: fix
        case .cobalt_67:
            return ChemicalElementDetails(self, neutron_count: 40, standard_atomic_weight: "66.94089", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "0.425"))
        case .cobalt_68:
            return ChemicalElementDetails(self, neutron_count: 41, standard_atomic_weight: "67.94487", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "0.199"))
        case .cobalt_68_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 41, standard_atomic_weight: "67.94487", decay_mode: nil, half_life: TimeUnit(type: TimeUnitType.second, value: "1.6")) // TODO: fix
        case .cobalt_69:
            return ChemicalElementDetails(self, neutron_count: 42, standard_atomic_weight: "68.94632", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "227"))
        case .cobalt_70:
            return ChemicalElementDetails(self, neutron_count: 43, standard_atomic_weight: "69.9510", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "119"))
        case .cobalt_70_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 43, standard_atomic_weight: "69.9510", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "500")) // TODO: fix
        case .cobalt_71:
            return ChemicalElementDetails(self, neutron_count: 44, standard_atomic_weight: "70.9529", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "97"))
        case .cobalt_72:
            return ChemicalElementDetails(self, neutron_count: 45, standard_atomic_weight: "71.95781", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "62"))
        case .cobalt_73:
            return ChemicalElementDetails(self, neutron_count: 46, standard_atomic_weight: "72.96024", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "41")) // TODO: fix
        case .cobalt_74:
            return ChemicalElementDetails(self, neutron_count: 47, standard_atomic_weight: "73.96538", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "50")) // TODO: fix
        case .cobalt_75:
            return ChemicalElementDetails(self, neutron_count: 48, standard_atomic_weight: "74.96833", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "40")) // TODO: fix
        }
    }
}
