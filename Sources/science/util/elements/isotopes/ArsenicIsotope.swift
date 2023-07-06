//
//  ArsenicIsotope.swift
//  
//
//  Created by Evan Anderson on 5/20/23.
//

import Foundation
import SwiftUnits

// https://en.wikipedia.org/wiki/Isotopes_of_arsenic
public enum ArsenicIsotope : String, ChemicalElementIsotope {
    case arsenic_60
    case arsenic_61
    case arsenic_62
    case arsenic_63
    case arsenic_64
    case arsenic_65
    case arsenic_66
    case arsenic_66_isomer_1
    case arsenic_66_isomer_2
    case arsenic_67
    case arsenic_68
    case arsenic_68_isomer_1
    case arsenic_69
    case arsenic_70
    case arsenic_70_isomer_1
    case arsenic_71
    case arsenic_72
    case arsenic_73
    case arsenic_74
    case arsenic_75
    case arsenic_75_isomer_1
    case arsenic_76
    case arsenic_76_isomer_1
    case arsenic_77
    case arsenic_77_isomer_1
    case arsenic_78
    case arsenic_79
    case arsenic_79_isomer_1
    case arsenic_80
    case arsenic_81
    case arsenic_82
    case arsenic_82_isomer_1
    case arsenic_83
    case arsenic_84
    case arsenic_84_isomer_1
    case arsenic_85
    case arsenic_86
    case arsenic_87
    case arsenic_88
    case arsenic_89
    case arsenic_90
    case arsenic_91
    case arsenic_92
    
    public var element : ChemicalElement {
        return ChemicalElement.arsenic
    }
    
    public var load_details : ChemicalElementDetails {
        switch self {
        case .arsenic_60:
            return ChemicalElementDetails(self, neutron_count: 27, standard_atomic_weight: "59.99313", decay_mode: AtomicDecayType.proton_emission(amount: 1), half_life: nil) // TODO: fix
        case .arsenic_61:
            return ChemicalElementDetails(self, neutron_count: 28, standard_atomic_weight: "60.98062", decay_mode: AtomicDecayType.proton_emission(amount: 1), half_life: nil) // TODO: fix
        case .arsenic_62:
            return ChemicalElementDetails(self, neutron_count: 29, standard_atomic_weight: "61.97320", decay_mode: AtomicDecayType.proton_emission(amount: 1), half_life: nil) // TODO: fix
        case .arsenic_63:
            return ChemicalElementDetails(self, neutron_count: 30, standard_atomic_weight: "62.96369", decay_mode: AtomicDecayType.proton_emission(amount: 1), half_life: nil) // TODO: fix
        case .arsenic_64:
            return ChemicalElementDetails(self, neutron_count: 31, standard_atomic_weight: "63.95757", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "40"))
        case .arsenic_65:
            return ChemicalElementDetails(self, neutron_count: 32, standard_atomic_weight: "64.94956", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "170"))
        case .arsenic_66:
            return ChemicalElementDetails(self, neutron_count: 33, standard_atomic_weight: "65.94471", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "95.77"))
        case .arsenic_66_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 33, standard_atomic_weight: "65.94471", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "1.1")) // TODO: fix
        case .arsenic_66_isomer_2:
            return ChemicalElementDetails(self, neutron_count: 33, standard_atomic_weight: "65.94471", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "8.2")) // TODO: fix
        case .arsenic_67:
            return ChemicalElementDetails(self, neutron_count: 34, standard_atomic_weight: "66.93919", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "42.5"))
        case .arsenic_68:
            return ChemicalElementDetails(self, neutron_count: 35, standard_atomic_weight: "67.93677", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "151.6"))
        case .arsenic_68_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 35, standard_atomic_weight: "67.93677", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "111")) // TODO: fix
        case .arsenic_69:
            return ChemicalElementDetails(self, neutron_count: 36, standard_atomic_weight: "68.93227", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.minute, value: "15.2"))
        case .arsenic_70:
            return ChemicalElementDetails(self, neutron_count: 37, standard_atomic_weight: "69.93092", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.minute, value: "52.6"))
        case .arsenic_70_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 37, standard_atomic_weight: "69.93092", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "96")) // TODO: fix
        case .arsenic_71:
            return ChemicalElementDetails(self, neutron_count: 38, standard_atomic_weight: "70.927112", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.hour, value: "65.28"))
        case .arsenic_72:
            return ChemicalElementDetails(self, neutron_count: 39, standard_atomic_weight: "71.926752", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.hour, value: "26.0"))
        case .arsenic_73:
            return ChemicalElementDetails(self, neutron_count: 40, standard_atomic_weight: "72.923825", decay_mode: AtomicDecayType.electron_capture(amount: 1), half_life: TimeUnit(type: TimeUnitType.day, value: "80.30"))
        case .arsenic_74:
            return ChemicalElementDetails(self, neutron_count: 41, standard_atomic_weight: "73.9239287", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.day, value: "17.77"))
        case .arsenic_75:
            return ChemicalElementDetails(self, neutron_count: 42, standard_atomic_weight: "74.9215965")
        case .arsenic_75_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 42, standard_atomic_weight: "74.9215965", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "17.62")) // TODO: fix
        case .arsenic_76:
            return ChemicalElementDetails(self, neutron_count: 43, standard_atomic_weight: "75.922394", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.day, value: "1.0942"))
        case .arsenic_76_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 43, standard_atomic_weight: "75.922394", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "1.84")) // TODO: fix
        case .arsenic_77:
            return ChemicalElementDetails(self, neutron_count: 44, standard_atomic_weight: "76.9206473", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.hour, value: "38.83"), decays_into_isomer: 1)
        case .arsenic_77_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 44, standard_atomic_weight: "76.9206473", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "114.0")) // TODO: fix
        case .arsenic_78:
            return ChemicalElementDetails(self, neutron_count: 45, standard_atomic_weight: "77.921827", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.minute, value: "90.7"))
        case .arsenic_79:
            return ChemicalElementDetails(self, neutron_count: 46, standard_atomic_weight: "78.920948", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.minute, value: "9.01"))
        case .arsenic_79_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 46, standard_atomic_weight: "78.920948", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "1.21")) // TODO: fix
        case .arsenic_80:
            return ChemicalElementDetails(self, neutron_count: 47, standard_atomic_weight: "79.922534", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "15.2"))
        case .arsenic_81:
            return ChemicalElementDetails(self, neutron_count: 48, standard_atomic_weight: "80.922132", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "33.3"), decays_into_isomer: 1)
        case .arsenic_82:
            return ChemicalElementDetails(self, neutron_count: 49, standard_atomic_weight: "81.92450", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "19.1"))
        case .arsenic_82_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 49, standard_atomic_weight: "81.92450", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "13.6"))
        case .arsenic_83:
            return ChemicalElementDetails(self, neutron_count: 50, standard_atomic_weight: "82.92498", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "13.4"), decays_into_isomer: 1)
        case .arsenic_84:
            return ChemicalElementDetails(self, neutron_count: 51, standard_atomic_weight: "83.92906", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "4.02"))
        case .arsenic_84_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 51, standard_atomic_weight: "83.92906", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "650")) // TODO: fix
        case .arsenic_85:
            return ChemicalElementDetails(self, neutron_count: 52, standard_atomic_weight: "84.93202", decay_mode: AtomicDecayType.beta_minus_neutron_emission(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "2.021"))
        case .arsenic_86:
            return ChemicalElementDetails(self, neutron_count: 53, standard_atomic_weight: "85.93650", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "0.945"))
        case .arsenic_87:
            return ChemicalElementDetails(self, neutron_count: 54, standard_atomic_weight: "86.93990", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "0.56"))
        case .arsenic_88:
            return ChemicalElementDetails(self, neutron_count: 55, standard_atomic_weight: "87.94494", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "300"))
        case .arsenic_89:
            return ChemicalElementDetails(self, neutron_count: 56, standard_atomic_weight: "88.94939", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "200"))
        case .arsenic_90:
            return ChemicalElementDetails(self, neutron_count: 57, standard_atomic_weight: "89.95550", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "80")) // TODO: fix
        case .arsenic_91:
            return ChemicalElementDetails(self, neutron_count: 58, standard_atomic_weight: "90.96043", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "50")) // TODO: fix
        case .arsenic_92:
            return ChemicalElementDetails(self, neutron_count: 59, standard_atomic_weight: "91.96680", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "30")) // TODO: fix
        }
    }
}
