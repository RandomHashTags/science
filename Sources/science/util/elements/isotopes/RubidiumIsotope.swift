//
//  RubidiumIsotope.swift
//  
//
//  Created by Evan Anderson on 5/20/23.
//

import Foundation

// https://en.wikipedia.org/wiki/Isotopes_of_rubidium
public enum RubidiumIsotope : String, ChemicalElementIsotope {
    case rubidium_71
    case rubidium_72
    case rubidium_72_isomer_1
    case rubidium_73
    case rubidium_74
    case rubidium_75
    case rubidium_76
    case rubidium_76_isomer_1
    case rubidium_77
    case rubidium_78
    case rubidium_78_isomer_1
    case rubidium_79
    case rubidium_80
    case rubidium_80_isomer_1
    case rubidium_81
    case rubidium_81_isomer_1
    case rubidium_82
    case rubidium_82_isomer_1
    case rubidium_83
    case rubidium_83_isomer_1
    case rubidium_84
    case rubidium_84_isomer_1
    case rubidium_85
    case rubidium_86
    case rubidium_86_isomer_1
    case rubidium_87
    case rubidium_88
    case rubidium_89
    case rubidium_90
    case rubidium_90_isomer_1
    case rubidium_91
    case rubidium_92
    case rubidium_93
    case rubidium_93_isomer_1
    case rubidium_94
    case rubidium_95
    case rubidium_96
    case rubidium_96_isomer_1
    case rubidium_97
    case rubidium_98
    case rubidium_98_isomer_1
    case rubidium_99
    case rubidium_100
    case rubidium_101
    case rubidium_102
    case rubidium_103
    case rubidium_104
    case rubidium_105
    case rubidium_106
    
    public var element : ChemicalElement {
        return ChemicalElement.rubidium
    }
    
    public var load_details : ChemicalElementDetails {
        switch self {
        case .rubidium_71:
            return ChemicalElementDetails(self, neutron_count: 34, standard_atomic_weight: "70.96532", decay_mode: AtomicDecayType.proton_emission(amount: 1), half_life: nil) // TODO: fix
        case .rubidium_72:
            return ChemicalElementDetails(self, neutron_count: 35, standard_atomic_weight: "71.95908", decay_mode: AtomicDecayType.proton_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "1.4"))
        case .rubidium_72_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 35, standard_atomic_weight: "71.95908", decay_mode: AtomicDecayType.proton_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "1"))
        case .rubidium_73:
            return ChemicalElementDetails(self, neutron_count: 36, standard_atomic_weight: "72.95056", decay_mode: AtomicDecayType.proton_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "29"))
        case .rubidium_74:
            return ChemicalElementDetails(self, neutron_count: 37, standard_atomic_weight: "73.944265", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "64.76"))
        case .rubidium_75:
            return ChemicalElementDetails(self, neutron_count: 38, standard_atomic_weight: "74.938570", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "19.0"))
        case .rubidium_76:
            return ChemicalElementDetails(self, neutron_count: 39, standard_atomic_weight: "75.9350722", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "36.5"))
        case .rubidium_76_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 39, standard_atomic_weight: "75.9350722", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "3.050")) // TODO: fix
        case .rubidium_77:
            return ChemicalElementDetails(self, neutron_count: 40, standard_atomic_weight: "76.930408", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.minute, value: "3.77"))
        case .rubidium_78:
            return ChemicalElementDetails(self, neutron_count: 41, standard_atomic_weight: "77.928141", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.minute, value: "17.66"))
        case .rubidium_78_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 41, standard_atomic_weight: "77.928141", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.minute, value: "5.74"))
        case .rubidium_79:
            return ChemicalElementDetails(self, neutron_count: 42, standard_atomic_weight: "78.923989", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.minute, value: "22.9"))
        case .rubidium_80:
            return ChemicalElementDetails(self, neutron_count: 43, standard_atomic_weight: "79.922519", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "33.4"))
        case .rubidium_80_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 43, standard_atomic_weight: "79.922519", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "1.6")) // TODO: fix
        case .rubidium_81:
            return ChemicalElementDetails(self, neutron_count: 44, standard_atomic_weight: "80.918996", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.hour, value: "4.570"))
        case .rubidium_81_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 44, standard_atomic_weight: "80.918996", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(type: TimeUnitType.minute, value: "30.5"))
        case .rubidium_82:
            return ChemicalElementDetails(self, neutron_count: 45, standard_atomic_weight: "81.9182086", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.minute, value: "1.273"))
        case .rubidium_82_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 45, standard_atomic_weight: "81.9182086", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.hour, value: "6.472"))
        case .rubidium_83:
            return ChemicalElementDetails(self, neutron_count: 46, standard_atomic_weight: "82.915110", decay_mode: AtomicDecayType.electron_capture(amount: 1), half_life: TimeUnit(type: TimeUnitType.day, value: "86.2"))
        case .rubidium_83_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 46, standard_atomic_weight: "82.915110", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "7.8"))
        case .rubidium_84:
            return ChemicalElementDetails(self, neutron_count: 47, standard_atomic_weight: "83.914385", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.day, value: "33.1"))
        case .rubidium_84_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 47, standard_atomic_weight: "83.914385", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(type: TimeUnitType.minute, value: "20.26"))
        case .rubidium_85:
            return ChemicalElementDetails(self, neutron_count: 48, standard_atomic_weight: "84.911789738")
        case .rubidium_86:
            return ChemicalElementDetails(self, neutron_count: 49, standard_atomic_weight: "85.91116742", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.day, value: "18.642"))
        case .rubidium_86_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 49, standard_atomic_weight: "85.91116742", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(type: TimeUnitType.minute, value: "1.017"))
        case .rubidium_87:
            return ChemicalElementDetails(self, neutron_count: 50, standard_atomic_weight: "86.909180527", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.year, value: "49230000000"))
        case .rubidium_88:
            return ChemicalElementDetails(self, neutron_count: 51, standard_atomic_weight: "87.91131559", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.minute, value: "17.773"))
        case .rubidium_89:
            return ChemicalElementDetails(self, neutron_count: 52, standard_atomic_weight: "88.912278", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.minute, value: "15.15"))
        case .rubidium_90:
            return ChemicalElementDetails(self, neutron_count: 53, standard_atomic_weight: "89.914802", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "158"))
        case .rubidium_90_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 53, standard_atomic_weight: "89.914802", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "258"))
        case .rubidium_91:
            return ChemicalElementDetails(self, neutron_count: 54, standard_atomic_weight: "90.916537", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "58.4"))
        case .rubidium_92:
            return ChemicalElementDetails(self, neutron_count: 55, standard_atomic_weight: "91.919729", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "4.492"))
        case .rubidium_93:
            return ChemicalElementDetails(self, neutron_count: 56, standard_atomic_weight: "92.922042", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "5.84"))
        case .rubidium_93_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 56, standard_atomic_weight: "92.922042", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "57")) // TODO: fix
        case .rubidium_94:
            return ChemicalElementDetails(self, neutron_count: 57, standard_atomic_weight: "93.926405", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "2.702"))
        case .rubidium_95:
            return ChemicalElementDetails(self, neutron_count: 58, standard_atomic_weight: "94.929303", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "377.5"))
        case .rubidium_96:
            return ChemicalElementDetails(self, neutron_count: 59, standard_atomic_weight: "95.93427", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "202.8"))
        case .rubidium_96_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 59, standard_atomic_weight: "95.93427", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "200"))
        case .rubidium_97:
            return ChemicalElementDetails(self, neutron_count: 60, standard_atomic_weight: "96.93735", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "169.9"))
        case .rubidium_98:
            return ChemicalElementDetails(self, neutron_count: 61, standard_atomic_weight: "97.94179", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "114"))
        case .rubidium_98_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 61, standard_atomic_weight: "97.94179", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "96"))
        case .rubidium_99:
            return ChemicalElementDetails(self, neutron_count: 62, standard_atomic_weight: "98.94538", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "50.3"))
        case .rubidium_100:
            return ChemicalElementDetails(self, neutron_count: 63, standard_atomic_weight: "99.94987", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "51"))
        case .rubidium_101:
            return ChemicalElementDetails(self, neutron_count: 64, standard_atomic_weight: "100.95320", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "32"))
        case .rubidium_102:
            return ChemicalElementDetails(self, neutron_count: 65, standard_atomic_weight: "101.95887", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "37"))
        case .rubidium_103:
            return ChemicalElementDetails(self, neutron_count: 66, standard_atomic_weight: "0", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "26")) // TODO: fix
        case .rubidium_104:
            return ChemicalElementDetails(self, neutron_count: 67, standard_atomic_weight: "0", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "35")) // TODO: fix
        case .rubidium_105:
            return ChemicalElementDetails(self, neutron_count: 68, standard_atomic_weight: "0", decay_mode: nil, half_life: nil) // TODO: fix
        case .rubidium_106:
            return ChemicalElementDetails(self, neutron_count: 69, standard_atomic_weight: "0", decay_mode: nil, half_life: nil) // TODO: fix
        }
    }
}
