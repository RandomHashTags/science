//
//  StrontiumIsotope.swift
//  
//
//  Created by Evan Anderson on 5/22/23.
//

import Foundation
import SwiftUnits

// https://en.wikipedia.org/wiki/Isotopes_of_strontium
public enum StrontiumIsotope : String, ChemicalElementIsotope {
    case strontium_73
    case strontium_74
    case strontium_75
    case strontium_76
    case strontium_77
    case strontium_78
    case strontium_79
    case strontium_80
    case strontium_81
    case strontium_82
    case strontium_83
    case strontium_83_isomer_1
    case strontium_84
    case strontium_85
    case strontium_85_isomer_1
    case strontium_86
    case strontium_86_isomer_1
    case strontium_87
    case strontium_87_isomer_1
    case strontium_88
    case strontium_89
    case strontium_90
    case strontium_91
    case strontium_92
    case strontium_93
    case strontium_94
    case strontium_95
    case strontium_96
    case strontium_97
    case strontium_97_isomer_1
    case strontium_97_isomer_2
    case strontium_98
    case strontium_99
    case strontium_100
    case strontium_101
    case strontium_102
    case strontium_103
    case strontium_104
    case strontium_105
    case strontium_106
    case strontium_107
    case strontium_108
    
    public var element : ChemicalElement {
        return ChemicalElement.strontium
    }
    
    public var load_details : ChemicalElementDetails {
        switch self {
        case .strontium_73:
            return ChemicalElementDetails(self, neutrons: 35, standard_atomic_weight: "72.96597", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "26"))
        case .strontium_74:
            return ChemicalElementDetails(self, neutrons: 36, standard_atomic_weight: "73.95631", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "50"))
        case .strontium_75:
            return ChemicalElementDetails(self, neutrons: 37, standard_atomic_weight: "74.94995", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "88"))
        case .strontium_76:
            return ChemicalElementDetails(self, neutrons: 38, standard_atomic_weight: "75.94177", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "7.89"))
        case .strontium_77:
            return ChemicalElementDetails(self, neutrons: 39, standard_atomic_weight: "76.937945", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "9.0"))
        case .strontium_78:
            return ChemicalElementDetails(self, neutrons: 40, standard_atomic_weight: "77.932180", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "159"))
        case .strontium_79:
            return ChemicalElementDetails(self, neutrons: 41, standard_atomic_weight: "78.929708", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.minute, value: "2.25"))
        case .strontium_80:
            return ChemicalElementDetails(self, neutrons: 42, standard_atomic_weight: "79.924521", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.minute, value: "106.3"))
        case .strontium_81:
            return ChemicalElementDetails(self, neutrons: 43, standard_atomic_weight: "80.923212", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.minute, value: "22.3"))
        case .strontium_82:
            return ChemicalElementDetails(self, neutrons: 44, standard_atomic_weight: "81.918402", decay_mode: AtomicDecayType.electron_capture(amount: 1), half_life: TimeUnit(type: TimeUnitType.day, value: "25.36"))
        case .strontium_83:
            return ChemicalElementDetails(self, neutrons: 45, standard_atomic_weight: "82.917557", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.hour, value: "32.41"))
        case .strontium_83_isomer_1:
            return ChemicalElementDetails(self, neutrons: 45, standard_atomic_weight: "82.917557", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(type: TimeUnitType.second, value: "4.95"))
        case .strontium_84:
            return ChemicalElementDetails(self, neutrons: 46, standard_atomic_weight: "83.913425")
        case .strontium_85:
            return ChemicalElementDetails(self, neutrons: 47, standard_atomic_weight: "84.912933", decay_mode: AtomicDecayType.electron_capture(amount: 1), half_life: TimeUnit(type: TimeUnitType.day, value: "64.853"))
        case .strontium_85_isomer_1:
            return ChemicalElementDetails(self, neutrons: 47, standard_atomic_weight: "84.912933", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(type: TimeUnitType.minute, value: "67.63"))
        case .strontium_86:
            return ChemicalElementDetails(self, neutrons: 48, standard_atomic_weight: "85.9092607309")
        case .strontium_86_isomer_1:
            return ChemicalElementDetails(self, neutrons: 48, standard_atomic_weight: "85.9092607309", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "455")) // TODO: fix
        case .strontium_87:
            return ChemicalElementDetails(self, neutrons: 49, standard_atomic_weight: "86.9088774970")
        case .strontium_87_isomer_1:
            return ChemicalElementDetails(self, neutrons: 49, standard_atomic_weight: "86.9088774970", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(type: TimeUnitType.hour, value: "2.815"))
        case .strontium_88:
            return ChemicalElementDetails(self, neutrons: 50, standard_atomic_weight: "87.9056122571")
        case .strontium_89:
            return ChemicalElementDetails(self, neutrons: 51, standard_atomic_weight: "88.9074507", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.day, value: "50.57"))
        case .strontium_90:
            return ChemicalElementDetails(self, neutrons: 52, standard_atomic_weight: "89.907738", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.year, value: "28.90"))
        case .strontium_91:
            return ChemicalElementDetails(self, neutrons: 53, standard_atomic_weight: "90.910203", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.hour, value: "9.63"))
        case .strontium_92:
            return ChemicalElementDetails(self, neutrons: 54, standard_atomic_weight: "91.911038", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.hour, value: "2.66"))
        case .strontium_93:
            return ChemicalElementDetails(self, neutrons: 55, standard_atomic_weight: "92.914026", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.minute, value: "7.423"))
        case .strontium_94:
            return ChemicalElementDetails(self, neutrons: 56, standard_atomic_weight: "93.915361", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "75.3"))
        case .strontium_95:
            return ChemicalElementDetails(self, neutrons: 57, standard_atomic_weight: "94.919359", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "23.90"))
        case .strontium_96:
            return ChemicalElementDetails(self, neutrons: 58, standard_atomic_weight: "95.921697", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "1.07"))
        case .strontium_97:
            return ChemicalElementDetails(self, neutrons: 59, standard_atomic_weight: "96.926153", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "429"))
        case .strontium_97_isomer_1:
            return ChemicalElementDetails(self, neutrons: 59, standard_atomic_weight: "96.926153", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "170")) // TODO: fix
        case .strontium_97_isomer_2:
            return ChemicalElementDetails(self, neutrons: 59, standard_atomic_weight: "96.926153", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "255")) // TODO: fix
        case .strontium_98:
            return ChemicalElementDetails(self, neutrons: 60, standard_atomic_weight: "97.928453", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "0.653"))
        case .strontium_99:
            return ChemicalElementDetails(self, neutrons: 61, standard_atomic_weight: "98.93324", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "0.269"))
        case .strontium_100:
            return ChemicalElementDetails(self, neutrons: 62, standard_atomic_weight: "99.93535", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "202"))
        case .strontium_101:
            return ChemicalElementDetails(self, neutrons: 63, standard_atomic_weight: "100.94052", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "118"))
        case .strontium_102:
            return ChemicalElementDetails(self, neutrons: 64, standard_atomic_weight: "101.94302", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "69"))
        case .strontium_103:
            return ChemicalElementDetails(self, neutrons: 65, standard_atomic_weight: "102.94895", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "50"))
        case .strontium_104:
            return ChemicalElementDetails(self, neutrons: 66, standard_atomic_weight: "103.95233", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "30"))
        case .strontium_105:
            return ChemicalElementDetails(self, neutrons: 67, standard_atomic_weight: "104.95858", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "20")) // TODO: fix
        case .strontium_106:
            return ChemicalElementDetails(self, neutrons: 68, standard_atomic_weight: "0", decay_mode: nil, half_life: nil) // TODO: fix
        case .strontium_107:
            return ChemicalElementDetails(self, neutrons: 69, standard_atomic_weight: "0", decay_mode: nil, half_life: nil) // TODO: fix
        case .strontium_108:
            return ChemicalElementDetails(self, neutrons: 70, standard_atomic_weight: "0", decay_mode: nil, half_life: nil) // TODO: fix
        }
    }
}
