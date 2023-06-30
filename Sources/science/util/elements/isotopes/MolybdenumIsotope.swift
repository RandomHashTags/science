//
//  MolybdenumIsotope.swift
//
//
//  Created by Evan Anderson on 6/30/23.
//

import Foundation

// https://en.wikipedia.org/wiki/Isotopes_of_molybdenum
public enum MolybdenumIsotope : String, ChemicalElementIsotope {
    case molybdenum_83
    case molybdenum_84
    case molybdenum_85
    case molybdenum_86
    case molybdenum_87
    case molybdenum_88
    case molybdenum_89
    case molybdenum_89_isomer_1
    case molybdenum_90
    case molybdenum_90_isomer_1
    case molybdenum_91
    case molybdenum_91_isomer_1
    case molybdenum_92
    case molybdenum_92_isomer_1
    case molybdenum_93
    case molybdenum_93_isomer_1
    case molybdenum_94
    case molybdenum_95
    case molybdenum_96
    case molybdenum_97
    case molybdenum_98
    case molybdenum_99
    case molybdenum_99_isomer_1
    case molybdenum_99_isomer_2
    case molybdenum_100
    case molybdenum_101
    case molybdenum_102
    case molybdenum_103
    case molybdenum_104
    case molybdenum_105
    case molybdenum_106
    case molybdenum_107
    case molybdenum_107_isomer_1
    case molybdenum_108
    case molybdenum_109
    case molybdenum_110
    case molybdenum_111
    case molybdenum_112
    case molybdenum_113
    case molybdenum_114
    case molybdenum_115
    
    public var element : ChemicalElement {
        return ChemicalElement.molybdenum
    }
    
    public var load_details : ChemicalElementDetails {
        switch self {
        case .molybdenum_83:
            return ChemicalElementDetails(self, neutron_count: 41, standard_atomic_weight: "82.94874", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "23"))
        case .molybdenum_84:
            return ChemicalElementDetails(self, neutron_count: 42, standard_atomic_weight: "83.94009", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "3.8"))
        case .molybdenum_85:
            return ChemicalElementDetails(self, neutron_count: 43, standard_atomic_weight: "84.93655", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "3.2"))
        case .molybdenum_86:
            return ChemicalElementDetails(self, neutron_count: 44, standard_atomic_weight: "85.93070", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "19.6"))
        case .molybdenum_87:
            return ChemicalElementDetails(self, neutron_count: 45, standard_atomic_weight: "86.92733", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "14.05"))
        case .molybdenum_88:
            return ChemicalElementDetails(self, neutron_count: 46, standard_atomic_weight: "87.921953", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.minute, value: "8.0"))
        case .molybdenum_89:
            return ChemicalElementDetails(self, neutron_count: 47, standard_atomic_weight: "88.919480", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.minute, value: "2.11"))
        case .molybdenum_89_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 47, standard_atomic_weight: "88.919480", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "190"))
        case .molybdenum_90:
            return ChemicalElementDetails(self, neutron_count: 48, standard_atomic_weight: "89.913937", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.hour, value: "5.56"))
        case .molybdenum_90_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 48, standard_atomic_weight: "89.913937", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "1.12")) // TODO: fix
        case .molybdenum_91:
            return ChemicalElementDetails(self, neutron_count: 49, standard_atomic_weight: "90.911750", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.minute, value: "15.49"))
        case .molybdenum_91_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 49, standard_atomic_weight: "90.911750", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(type: TimeUnitType.second, value: "64.6"))
        case .molybdenum_92:
            return ChemicalElementDetails(self, neutron_count: 50, standard_atomic_weight: "91.906811")
        case .molybdenum_92_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 50, standard_atomic_weight: "91.906811", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "190")) // TODO: fix
        case .molybdenum_93:
            return ChemicalElementDetails(self, neutron_count: 51, standard_atomic_weight: "92.906813", decay_mode: AtomicDecayType.electron_capture(amount: 1), half_life: TimeUnit(type: TimeUnitType.year, value: "4000"))
        case .molybdenum_93_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 51, standard_atomic_weight: "92.906813", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(type: TimeUnitType.hour, value: "6.85"))
        case .molybdenum_94:
            return ChemicalElementDetails(self, neutron_count: 52, standard_atomic_weight: "93.9050883")
        case .molybdenum_95:
            return ChemicalElementDetails(self, neutron_count: 53, standard_atomic_weight: "94.9058421")
        case .molybdenum_96:
            return ChemicalElementDetails(self, neutron_count: 54, standard_atomic_weight: "95.9046795")
        case .molybdenum_97:
            return ChemicalElementDetails(self, neutron_count: 55, standard_atomic_weight: "96.9060215")
        case .molybdenum_98:
            return ChemicalElementDetails(self, neutron_count: 56, standard_atomic_weight: "97.90540482")
        case .molybdenum_99:
            return ChemicalElementDetails(self, neutron_count: 57, standard_atomic_weight: "98.9077119", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.day, value: "2.7489"))
        case .molybdenum_99_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 57, standard_atomic_weight: "98.9077119", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "15.5")) // TODO: fix
        case .molybdenum_99_isomer_2:
            return ChemicalElementDetails(self, neutron_count: 57, standard_atomic_weight: "98.9077119", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "0.76")) // TODO: fix
        case .molybdenum_100:
            return ChemicalElementDetails(self, neutron_count: 58, standard_atomic_weight: "99.907477", decay_mode: AtomicDecayType.beta_minus(amount: 2), half_life: TimeUnit(prefix: UnitPrefix.exa, type: TimeUnitType.year, value: "8.5")) // TODO: fix (8.5(5)×10^18 a | where a=age of universe)
        case .molybdenum_101:
            return ChemicalElementDetails(self, neutron_count: 59, standard_atomic_weight: "100.910347", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.minute, value: "14.61"))
        case .molybdenum_102:
            return ChemicalElementDetails(self, neutron_count: 60, standard_atomic_weight: "101.910297", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.minute, value: "11.3"))
        case .molybdenum_103:
            return ChemicalElementDetails(self, neutron_count: 61, standard_atomic_weight: "102.91321", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "67.5"))
        case .molybdenum_104:
            return ChemicalElementDetails(self, neutron_count: 62, standard_atomic_weight: "103.91376", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "60"))
        case .molybdenum_105:
            return ChemicalElementDetails(self, neutron_count: 63, standard_atomic_weight: "104.91697", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "35.6"))
        case .molybdenum_106:
            return ChemicalElementDetails(self, neutron_count: 64, standard_atomic_weight: "105.918137", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "8.73"))
        case .molybdenum_107:
            return ChemicalElementDetails(self, neutron_count: 65, standard_atomic_weight: "106.92169", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "3.5"))
        case .molybdenum_107_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 65, standard_atomic_weight: "106.92169", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "470")) // TODO: fix
        case .molybdenum_108:
            return ChemicalElementDetails(self, neutron_count: 66, standard_atomic_weight: "107.92345", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "1.09"))
        case .molybdenum_109:
            return ChemicalElementDetails(self, neutron_count: 67, standard_atomic_weight: "108.92781", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "0.53"))
        case .molybdenum_110:
            return ChemicalElementDetails(self, neutron_count: 68, standard_atomic_weight: "109.92973", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "0.27"))
        case .molybdenum_111:
            return ChemicalElementDetails(self, neutron_count: 69, standard_atomic_weight: "110.93441", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "200"))
        case .molybdenum_112:
            return ChemicalElementDetails(self, neutron_count: 70, standard_atomic_weight: "111.93684", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "150"))
        case .molybdenum_113:
            return ChemicalElementDetails(self, neutron_count: 71, standard_atomic_weight: "112.94188", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "100"))
        case .molybdenum_114:
            return ChemicalElementDetails(self, neutron_count: 72, standard_atomic_weight: "113.94492", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "80")) // TODO: fix
        case .molybdenum_115:
            return ChemicalElementDetails(self, neutron_count: 73, standard_atomic_weight: "114.95029", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "60")) // TODO: fix
        }
    }
}
