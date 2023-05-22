//
//  ZirconiumIsotope.swift
//  
//
//  Created by Evan Anderson on 5/22/23.
//

import Foundation

// https://en.wikipedia.org/wiki/Isotopes_of_zirconium
public enum ZirconiumIsotope : String, ChemicalElementIsotope {
    case zirconium_78
    case zirconium_79
    case zirconium_80
    case zirconium_81
    case zirconium_82
    case zirconium_83
    case zirconium_84
    case zirconium_85
    case zirconium_85_isomer_1
    case zirconium_86
    case zirconium_87
    case zirconium_87_isomer_1
    case zirconium_88
    case zirconium_89
    case zirconium_89_isomer_1
    case zirconium_90
    case zirconium_90_isomer_1
    case zirconium_90_isomer_2
    case zirconium_91
    case zirconium_91_isomer_1
    case zirconium_92
    case zirconium_93
    case zirconium_94
    case zirconium_95
    case zirconium_96
    case zirconium_97
    case zirconium_98
    case zirconium_99
    case zirconium_100
    case zirconium_101
    case zirconium_102
    case zirconium_103
    case zirconium_104
    case zirconium_105
    case zirconium_106
    case zirconium_107
    case zirconium_108
    case zirconium_109
    case zirconium_110
    case zirconium_111
    case zirconium_112
    case zirconium_113
    case zirconium_114
    
    public var element : ChemicalElement {
        return ChemicalElement.zirconium
    }
    
    public var load_details : ChemicalElementDetails {
        switch self {
        case .zirconium_78:
            return ChemicalElementDetails(self, neutron_count: 38, standard_atomic_weight: "77.95523", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "50")) // TODO: fix
        case .zirconium_79:
            return ChemicalElementDetails(self, neutron_count: 39, standard_atomic_weight: "78.94916", decay_mode: AtomicDecayType.beta_plus_proton_emission, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "56"))
        case .zirconium_80:
            return ChemicalElementDetails(self, neutron_count: 40, standard_atomic_weight: "79.9404", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "4.6"))
        case .zirconium_81:
            return ChemicalElementDetails(self, neutron_count: 41, standard_atomic_weight: "80.93721", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "5.5"))
        case .zirconium_82:
            return ChemicalElementDetails(self, neutron_count: 42, standard_atomic_weight: "81.93109", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "32"))
        case .zirconium_83:
            return ChemicalElementDetails(self, neutron_count: 43, standard_atomic_weight: "82.92865", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "41.6"))
        case .zirconium_84:
            return ChemicalElementDetails(self, neutron_count: 44, standard_atomic_weight: "83.92325", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.minute, value: "25.9"))
        case .zirconium_85:
            return ChemicalElementDetails(self, neutron_count: 45, standard_atomic_weight: "84.92147", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.minute, value: "7.86"))
        case .zirconium_85_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 45, standard_atomic_weight: "84.92147", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(type: TimeUnitType.second, value: "10.9"))
        case .zirconium_86:
            return ChemicalElementDetails(self, neutron_count: 46, standard_atomic_weight: "85.91647", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.hour, value: "16.5"))
        case .zirconium_87:
            return ChemicalElementDetails(self, neutron_count: 47, standard_atomic_weight: "86.914816", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.hour, value: "1.68"))
        case .zirconium_87_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 47, standard_atomic_weight: "86.914816", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(type: TimeUnitType.second, value: "14.0"))
        case .zirconium_88:
            return ChemicalElementDetails(self, neutron_count: 48, standard_atomic_weight: "87.910227", decay_mode: AtomicDecayType.electron_capture(amount: 1), half_life: TimeUnit(type: TimeUnitType.day, value: "83.4"))
        case .zirconium_89:
            return ChemicalElementDetails(self, neutron_count: 49, standard_atomic_weight: "88.908890", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.hour, value: "78.41"))
        case .zirconium_89_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 49, standard_atomic_weight: "88.908890", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(type: TimeUnitType.minute, value: "4.161"))
        case .zirconium_90:
            return ChemicalElementDetails(self, neutron_count: 50, standard_atomic_weight: "89.9047044")
        case .zirconium_90_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 50, standard_atomic_weight: "89.9047044", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "809.2"))
        case .zirconium_90_isomer_2:
            return ChemicalElementDetails(self, neutron_count: 50, standard_atomic_weight: "89.9047044", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "131")) // TODO: fix
        case .zirconium_91:
            return ChemicalElementDetails(self, neutron_count: 51, standard_atomic_weight: "90.9056458")
        case .zirconium_91_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 51, standard_atomic_weight: "90.9056458", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "4.35")) // TODO: fix
        case .zirconium_92:
            return ChemicalElementDetails(self, neutron_count: 52, standard_atomic_weight: "91.9050408")
        case .zirconium_93:
            return ChemicalElementDetails(self, neutron_count: 53, standard_atomic_weight: "92.9064760", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.year, value: "1530000"))
        case .zirconium_94:
            return ChemicalElementDetails(self, neutron_count: 54, standard_atomic_weight: "93.9063152")
        case .zirconium_95:
            return ChemicalElementDetails(self, neutron_count: 55, standard_atomic_weight: "94.9080426", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.day, value: "64.032"))
        case .zirconium_96:
            return ChemicalElementDetails(self, neutron_count: 56, standard_atomic_weight: "95.9082734", decay_mode: AtomicDecayType.beta_minus(amount: 2), half_life: TimeUnit(type: TimeUnitType.year, value: "20000000000000000000"))
        case .zirconium_97:
            return ChemicalElementDetails(self, neutron_count: 57, standard_atomic_weight: "96.9109531", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.hour, value: "16.744"))
        case .zirconium_98:
            return ChemicalElementDetails(self, neutron_count: 58, standard_atomic_weight: "97.912735", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "30.7"))
        case .zirconium_99:
            return ChemicalElementDetails(self, neutron_count: 59, standard_atomic_weight: "98.916512", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "2.1"))
        case .zirconium_100:
            return ChemicalElementDetails(self, neutron_count: 60, standard_atomic_weight: "99.91776", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "7.1"))
        case .zirconium_101:
            return ChemicalElementDetails(self, neutron_count: 61, standard_atomic_weight: "100.92114", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "2.3"))
        case .zirconium_102:
            return ChemicalElementDetails(self, neutron_count: 62, standard_atomic_weight: "101.92298", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "2.9"))
        case .zirconium_103:
            return ChemicalElementDetails(self, neutron_count: 63, standard_atomic_weight: "102.92660", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "1.3"))
        case .zirconium_104:
            return ChemicalElementDetails(self, neutron_count: 64, standard_atomic_weight: "103.92878", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "1.2"))
        case .zirconium_105:
            return ChemicalElementDetails(self, neutron_count: 65, standard_atomic_weight: "104.93305", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "0.6"))
        case .zirconium_106:
            return ChemicalElementDetails(self, neutron_count: 66, standard_atomic_weight: "105.93591", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "200"))
        case .zirconium_107:
            return ChemicalElementDetails(self, neutron_count: 67, standard_atomic_weight: "106.94075", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "150"))
        case .zirconium_108:
            return ChemicalElementDetails(self, neutron_count: 68, standard_atomic_weight: "107.94396", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "80"))
        case .zirconium_109:
            return ChemicalElementDetails(self, neutron_count: 69, standard_atomic_weight: "108.94924", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "60")) // TODO: fix
        case .zirconium_110:
            return ChemicalElementDetails(self, neutron_count: 70, standard_atomic_weight: "109.95287", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "30")) // TODO: fix
        case .zirconium_111:
            return ChemicalElementDetails(self, neutron_count: 71, standard_atomic_weight: "0", decay_mode: nil, half_life: nil) // TODO: fix
        case .zirconium_112:
            return ChemicalElementDetails(self, neutron_count: 72, standard_atomic_weight: "0", decay_mode: nil, half_life: nil) // TODO: fix
        case .zirconium_113:
            return ChemicalElementDetails(self, neutron_count: 73, standard_atomic_weight: "0", decay_mode: nil, half_life: nil) // TODO: fix
        case .zirconium_114:
            return ChemicalElementDetails(self, neutron_count: 74, standard_atomic_weight: "0", decay_mode: nil, half_life: nil) // TODO: fix
        }
    }
}
