//
//  NiobiumIsotope.swift
//  
//
//  Created by Evan Anderson on 5/29/23.
//

import Foundation

// TODO: fix (a lot of incorrect information)
// https://en.wikipedia.org/wiki/Isotopes_of_niobium
/*
public enum NiobiumIsotope : String, ChemicalElementIsotope {
    case niobium_81
    case niobium_82
    case niobium_83
    case niobium_84
    case niobium_84_isomer_1
    case niobium_85
    case niobium_85_isomer_1
    case niobium_86
    case niobium_86_isomer_1
    case niobium_87
    case niobium_87_isomer_1
    case niobium_88
    case niobium_88_isomer_1
    case niobium_89
    case niobium_89_isomer_1
    case niobium_90
    case niobium_90_isomer_1
    case niobium_90_isomer_2
    case niobium_90_isomer_3
    case niobium_90_isomer_4
    case niobium_90_isomer_5
    case niobium_91
    case niobium_91_isomer_1
    case niobium_91_isomer_2
    case niobium_92
    case niobium_92_isomer_1
    case niobium_92_isomer_2
    case niobium_92_isomer_3
    case niobium_93
    case niobium_93_isomer_1
    case niobium_94
    case niobium_94_isomer_1
    case niobium_95
    case niobium_95_isomer_1
    case niobium_96
    case niobium_97
    case niobium_97_isomer_1
    case niobium_98
    case niobium_98_isomer_1
    case niobium_99
    case niobium_99_isomer_1
    case niobium_100
    case niobium_100_isomer_1
    case niobium_101
    case niobium_102
    case niobium_102_isomer_1
    case niobium_103
    case niobium_104
    case niobium_104_isomer_1
    case niobium_105
    case niobium_106
    case niobium_107
    case niobium_108
    case niobium_109
    case niobium_110
    case niobium_111
    case niobium_112
    case niobium_113
    case niobium_114
    case niobium_115
    case niobium_116
    case niobium_117
    
    public var element : ChemicalElement {
        return ChemicalElement.niobium
    }
    
    public var load_details : ChemicalElementDetails {
        switch self {
        case .niobium_81:
            return ChemicalElementDetails(self, neutron_count: 40, standard_atomic_weight: "80.94903", decay_mode: AtomicDecayType.beta_plus_proton_emission, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "43"))
        case .niobium_82:
            return ChemicalElementDetails(self, neutron_count: 41, standard_atomic_weight: "81.94313", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "51"))
        case .niobium_83:
            return ChemicalElementDetails(self, neutron_count: 42, standard_atomic_weight: "82.93671", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "4.1"))
        case .niobium_84:
            return ChemicalElementDetails(self, neutron_count: 43, standard_atomic_weight: "83.93357", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "9.8"))
        case .niobium_84_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 43, standard_atomic_weight: "83.93357", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "103")) // TODO: fix
        case .niobium_85:
            return ChemicalElementDetails(self, neutron_count: 44, standard_atomic_weight: "84.92791", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "20.9"))
        case .niobium_85_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 44, standard_atomic_weight: "84.92791", decay_mode: nil, half_life: TimeUnit(type: TimeUnitType.second, value: "12")) // TODO: fix
        case .niobium_86:
            return ChemicalElementDetails(self, neutron_count: 45, standard_atomic_weight: "85.92504", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "88"))
        case .niobium_86_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 45, standard_atomic_weight: "85.92504", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "56"))
        case .niobium_87:
            return ChemicalElementDetails(self, neutron_count: 46, standard_atomic_weight: "86.92036", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.minute, value: "3.75"))
        case .niobium_87_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 46, standard_atomic_weight: "86.92036", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.minute, value: "2.6"))
        case .niobium_88:
            return ChemicalElementDetails(self, neutron_count: 47, standard_atomic_weight: "87.91833", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.minute, value: "14.55"))
        case .niobium_88_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 47, standard_atomic_weight: "87.91833", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.minute, value: "7.8"))
        case .niobium_89:
            return ChemicalElementDetails(self, neutron_count: 48, standard_atomic_weight: "88.913418", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.hour, value: "2.03"))
        case .niobium_89_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 48, standard_atomic_weight: "88.913418", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.hour, value: "1.10"))
        case .niobium_90:
            return ChemicalElementDetails(self, neutron_count: 49, standard_atomic_weight: "89.911265", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.hour, value: "14.60"))
        case .niobium_90_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 49, standard_atomic_weight: "89.911265", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "63")) // TODO: fix
        case .niobium_90_isomer_2:
            return ChemicalElementDetails(self, neutron_count: 49, standard_atomic_weight: "89.911265", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(type: TimeUnitType.second, value: "18.81"))
        case .niobium_90_isomer_3:
            return ChemicalElementDetails(self, neutron_count: 49, standard_atomic_weight: "89.911265", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "0.9")) // TODO: fix
        case .niobium_90_isomer_4:
            return ChemicalElementDetails(self, neutron_count: 49, standard_atomic_weight: "89.911265", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "6.19")) // TODO: fix
        case .niobium_90_isomer_5:
            return ChemicalElementDetails(self, neutron_count: 49, standard_atomic_weight: "89.911265", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "472")) // TODO: fix
        case .niobium_91:
            return ChemicalElementDetails(self, neutron_count: 50, standard_atomic_weight: "90.906996", decay_mode: AtomicDecayType.electron_capture(amount: 1), half_life: 680 a)
        case .niobium_91_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 50, standard_atomic_weight: "90.906996", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(type: TimeUnitType.day, value: "60.86"))
        case .niobium_91_isomer_2:
            return ChemicalElementDetails(self, neutron_count: 50, standard_atomic_weight: "90.906996", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "3.76")) // TODO: fix
        case .niobium_92:
            return ChemicalElementDetails(self, neutron_count: 51, standard_atomic_weight: "91.907194", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.mega, type: TimeUnitType.year, value: "34.7"))
        case .niobium_92_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 51, standard_atomic_weight: "91.907194", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.day, value: "10.15"))
        case .niobium_92_isomer_2:
            return ChemicalElementDetails(self, neutron_count: 51, standard_atomic_weight: "91.907194", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "5.9"))
        case .niobium_92_isomer_3:
            return ChemicalElementDetails(self, neutron_count: 51, standard_atomic_weight: "91.907194", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "167"))
        case .niobium_93:
            return ChemicalElementDetails(self, neutron_count: 52, standard_atomic_weight: "92.9063781")
        case .niobium_93_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 52, standard_atomic_weight: "92.9063781", decay_mode: AtomicDecayType.isomeric_transition, half_life: 16.13 a)
        case .niobium_94:
            return ChemicalElementDetails(self, neutron_count: 53, standard_atomic_weight: "93.9072839", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: 2.03 a)
        case .niobium_94_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 53, standard_atomic_weight: "93.9072839", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(type: TimeUnitType.minute, value: "6.263"))
        case .niobium_95:
            return ChemicalElementDetails(self, neutron_count: 54, standard_atomic_weight: "94.9068358", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.day, value: "34.991"))
        case .niobium_95_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 54, standard_atomic_weight: "94.9068358", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(type: TimeUnitType.day, value: "3.61"))
        case .niobium_96:
            return ChemicalElementDetails(self, neutron_count: 55, standard_atomic_weight: "95.908101", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.hour, value: "23.35"))
        case .niobium_97:
            return ChemicalElementDetails(self, neutron_count: 56, standard_atomic_weight: "96.9080986", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.minute, value: "72.1"))
        case .niobium_97_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 56, standard_atomic_weight: "96.9080986", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(type: TimeUnitType.second, value: "52.7"))
        case .niobium_98:
            return ChemicalElementDetails(self, neutron_count: 57, standard_atomic_weight: "97.910328", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "2.86"))
        case .niobium_98_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 57, standard_atomic_weight: "97.910328", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.minute, value: "51.3"))
        case .niobium_99:
            return ChemicalElementDetails(self, neutron_count: 58, standard_atomic_weight: "98.911618", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "15.0"))
        case .niobium_99_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 58, standard_atomic_weight: "98.911618", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.minute, value: "2.6"))
        case .niobium_100:
            return ChemicalElementDetails(self, neutron_count: 59, standard_atomic_weight: "99.914182", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "1.5"))
        case .niobium_100_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 59, standard_atomic_weight: "99.914182", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "2.99"))
        case .niobium_101:
            return ChemicalElementDetails(self, neutron_count: 60, standard_atomic_weight: "100.915252", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "7.1"))
        case .niobium_102:
            return ChemicalElementDetails(self, neutron_count: 61, standard_atomic_weight: "101.91804", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "1.3"))
        case .niobium_102_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 61, standard_atomic_weight: "101.91804", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "4.3"))
        case .niobium_103:
            return ChemicalElementDetails(self, neutron_count: 62, standard_atomic_weight: "102.91914", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "1.5"))
        case .niobium_104:
            return ChemicalElementDetails(self, neutron_count: 63, standard_atomic_weight: "103.92246", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "4.9"))
        case .niobium_104_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 63, standard_atomic_weight: "103.92246", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "940"))
        case .niobium_105:
            return ChemicalElementDetails(self, neutron_count: 64, standard_atomic_weight: "104.92394", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "2.95"))
        case .niobium_106:
            return ChemicalElementDetails(self, neutron_count: 65, standard_atomic_weight: "105.92797", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "920"))
        case .niobium_107:
            return ChemicalElementDetails(self, neutron_count: 66, standard_atomic_weight: "106.93031", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "300"))
        case .niobium_108:
            return ChemicalElementDetails(self, neutron_count: 67, standard_atomic_weight: "107.93484", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "0.193"))
        case .niobium_109:
            return ChemicalElementDetails(self, neutron_count: 68, standard_atomic_weight: "108.93763", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "190"))
        case .niobium_110:
            return ChemicalElementDetails(self, neutron_count: 69, standard_atomic_weight: "109.94244", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "170"))
        case .niobium_111:
            return ChemicalElementDetails(self, neutron_count: 70, standard_atomic_weight: "110.94565", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "80")) // TODO: fix
        case .niobium_112:
            return ChemicalElementDetails(self, neutron_count: 71, standard_atomic_weight: "111.95083", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "60")) // TODO: fix
        case .niobium_113:
            return ChemicalElementDetails(self, neutron_count: 72, standard_atomic_weight: "112.95470", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "30")) // TODO: fix
        case .niobium_114:
            return ChemicalElementDetails(self, neutron_count: 73, standard_atomic_weight: "0", decay_mode: nil, half_life: nil) // TODO: fix
        case .niobium_115:
            return ChemicalElementDetails(self, neutron_count: 74, standard_atomic_weight: "0", decay_mode: nil, half_life: nil) // TODO: fix
        case .niobium_116:
            return ChemicalElementDetails(self, neutron_count: 75, standard_atomic_weight: "0", decay_mode: nil, half_life: nil) // TODO: fix
        case .niobium_117:
            return ChemicalElementDetails(self, neutron_count: 76, standard_atomic_weight: "0", decay_mode: nil, half_life: nil) // TODO: fix
        }
    }
}
*/
