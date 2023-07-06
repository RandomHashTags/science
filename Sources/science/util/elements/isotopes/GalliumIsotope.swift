//
//  GalliumIsotope.swift
//  
//
//  Created by Evan Anderson on 5/19/23.
//

import Foundation
import SwiftUnits

// https://en.wikipedia.org/wiki/Isotopes_of_gallium
public enum GalliumIsotope : String, ChemicalElementIsotope {
    case gallium_56
    case gallium_57
    case gallium_58
    case gallium_59
    case gallium_60
    case gallium_61
    case gallium_62
    case gallium_63
    case gallium_64
    case gallium_64_isomer_1
    case gallium_65
    case gallium_66
    case gallium_67
    case gallium_68
    case gallium_69
    case gallium_70
    case gallium_71
    case gallium_72
    case gallium_72_isomer_1
    case gallium_73
    case gallium_74
    case gallium_74_isomer_1
    case gallium_75
    case gallium_76
    case gallium_77
    case gallium_78
    case gallium_79
    case gallium_80
    case gallium_81
    case gallium_82
    case gallium_83
    case gallium_84
    case gallium_85
    case gallium_86
    
    public var element : ChemicalElement {
        return ChemicalElement.gallium
    }
    
    public var load_details : ChemicalElementDetails {
        switch self {
        case .gallium_56:
            return ChemicalElementDetails(self, neutron_count: 25, standard_atomic_weight: "55.99491", decay_mode: AtomicDecayType.proton_emission(amount: 1), half_life: nil) // TODO: fix
        case .gallium_57:
            return ChemicalElementDetails(self, neutron_count: 26, standard_atomic_weight: "56.98293", decay_mode: AtomicDecayType.proton_emission(amount: 1), half_life: nil) // TODO: fix
        case .gallium_58:
            return ChemicalElementDetails(self, neutron_count: 27, standard_atomic_weight: "57.97425", decay_mode: AtomicDecayType.proton_emission(amount: 1), half_life: nil) // TODO: fix
        case .gallium_59:
            return ChemicalElementDetails(self, neutron_count: 28, standard_atomic_weight: "58.96337", decay_mode: AtomicDecayType.proton_emission(amount: 1), half_life: nil) // TODO: fix
        case .gallium_60:
            return ChemicalElementDetails(self, neutron_count: 29, standard_atomic_weight: "59.95706", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "70"))
        case .gallium_61:
            return ChemicalElementDetails(self, neutron_count: 30, standard_atomic_weight: "60.94945", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "168"))
        case .gallium_62:
            return ChemicalElementDetails(self, neutron_count: 31, standard_atomic_weight: "61.944175", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "116.18"))
        case .gallium_63:
            return ChemicalElementDetails(self, neutron_count: 32, standard_atomic_weight: "62.9392942", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "32.4"))
        case .gallium_64:
            return ChemicalElementDetails(self, neutron_count: 33, standard_atomic_weight: "63.9368387", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.minute, value: "2.627"))
        case .gallium_64_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 33, standard_atomic_weight: "63.9368387", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "21.9")) // TODO: fix
        case .gallium_65:
            return ChemicalElementDetails(self, neutron_count: 34, standard_atomic_weight: "64.9327348", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.minute, value: "15.2"))
        case .gallium_66:
            return ChemicalElementDetails(self, neutron_count: 35, standard_atomic_weight: "65.931589", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.hour, value: "9.49"))
        case .gallium_67:
            return ChemicalElementDetails(self, neutron_count: 36, standard_atomic_weight: "66.9282017", decay_mode: AtomicDecayType.electron_capture(amount: 1), half_life: TimeUnit(type: TimeUnitType.day, value: "3.2612"))
        case .gallium_68:
            return ChemicalElementDetails(self, neutron_count: 37, standard_atomic_weight: "67.9279801", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.minute, value: "67.71"))
        case .gallium_69:
            return ChemicalElementDetails(self, neutron_count: 38, standard_atomic_weight: "68.9255736")
        case .gallium_70:
            return ChemicalElementDetails(self, neutron_count: 39, standard_atomic_weight: "69.9260220", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.minute, value: "21.14"))
        case .gallium_71:
            return ChemicalElementDetails(self, neutron_count: 40, standard_atomic_weight: "70.9247013")
        case .gallium_72:
            return ChemicalElementDetails(self, neutron_count: 41, standard_atomic_weight: "71.9263663", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.hour, value: "14.095"))
        case .gallium_72_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 41, standard_atomic_weight: "71.9263663", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "39.68"))
        case .gallium_73:
            return ChemicalElementDetails(self, neutron_count: 42, standard_atomic_weight: "72.9251747", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.hour, value: "4.86"))
        case .gallium_74:
            return ChemicalElementDetails(self, neutron_count: 43, standard_atomic_weight: "73.926946", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.minute, value: "8.12"))
        case .gallium_74_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 43, standard_atomic_weight: "73.926946", decay_mode: nil, half_life: TimeUnit(type: TimeUnitType.second, value: "9.5")) // TODO: fix
        case .gallium_75:
            return ChemicalElementDetails(self, neutron_count: 44, standard_atomic_weight: "74.9265002", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "126"))
        case .gallium_76:
            return ChemicalElementDetails(self, neutron_count: 45, standard_atomic_weight: "75.9288276", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "32.6"))
        case .gallium_77:
            return ChemicalElementDetails(self, neutron_count: 46, standard_atomic_weight: "76.9291543", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "13.2"))
        case .gallium_78:
            return ChemicalElementDetails(self, neutron_count: 47, standard_atomic_weight: "77.9316082", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "5.09"))
        case .gallium_79:
            return ChemicalElementDetails(self, neutron_count: 48, standard_atomic_weight: "78.93289", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "2.847"), decays_into_isomer: 1)
        case .gallium_80:
            return ChemicalElementDetails(self, neutron_count: 49, standard_atomic_weight: "79.93652", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "1.697"))
        case .gallium_81:
            return ChemicalElementDetails(self, neutron_count: 50, standard_atomic_weight: "80.93775", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "1.217"), decays_into_isomer: 1)
        case .gallium_82:
            return ChemicalElementDetails(self, neutron_count: 51, standard_atomic_weight: "81.94299", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "0.599"))
        case .gallium_83:
            return ChemicalElementDetails(self, neutron_count: 52, standard_atomic_weight: "82.94698", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "308"))
        case .gallium_84:
            return ChemicalElementDetails(self, neutron_count: 53, standard_atomic_weight: "83.95265", decay_mode: AtomicDecayType.beta_minus_neutron_emission(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "0.085"))
        case .gallium_85:
            return ChemicalElementDetails(self, neutron_count: 54, standard_atomic_weight: "84.95700", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "50")) // TODO: fix
        case .gallium_86:
            return ChemicalElementDetails(self, neutron_count: 55, standard_atomic_weight: "85.96312", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "30")) // TODO: fix
        }
    }
}
