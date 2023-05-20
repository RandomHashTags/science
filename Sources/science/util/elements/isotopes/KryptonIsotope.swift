//
//  KryptonIsotope.swift
//  
//
//  Created by Evan Anderson on 5/20/23.
//

import Foundation

// https://en.wikipedia.org/wiki/Isotopes_of_krypton
public enum KryptonIsotope : String, ChemicalElementIsotope {
    case krypton_69
    case krypton_70
    case krypton_71
    case krypton_72
    case krypton_73
    case krypton_73_isomer_1
    case krypton_74
    case krypton_75
    case krypton_76
    case krypton_77
    case krypton_78
    case krypton_79
    case krypton_79_isomer_1
    case krypton_80
    case krypton_81
    case krypton_81_isomer_1
    case krypton_82
    case krypton_83
    case krypton_83_isomer_1
    case krypton_83_isomer_2
    case krypton_84
    case krypton_84_isomer_1
    case krypton_85
    case krypton_85_isomer_1
    case krypton_85_isomer_2
    case krypton_86
    case krypton_87
    case krypton_88
    case krypton_89
    case krypton_90
    case krypton_91
    case krypton_92
    case krypton_93
    case krypton_94
    case krypton_95
    case krypton_96
    case krypton_97
    case krypton_98
    case krypton_99
    case krypton_100
    case krypton_101
    case krypton_102
    
    public var element : ChemicalElement {
        return ChemicalElement.krypton
    }
    
    public var load_details : ChemicalElementDetails {
        switch self {
        case .krypton_69:
            return ChemicalElementDetails(self, neutron_count: 33, standard_atomic_weight: "68.96518", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "32"))
        case .krypton_70:
            return ChemicalElementDetails(self, neutron_count: 34, standard_atomic_weight: "69.95526", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "52"))
        case .krypton_71:
            return ChemicalElementDetails(self, neutron_count: 35, standard_atomic_weight: "70.94963", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "100"))
        case .krypton_72:
            return ChemicalElementDetails(self, neutron_count: 36, standard_atomic_weight: "71.942092", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "17.16"))
        case .krypton_73:
            return ChemicalElementDetails(self, neutron_count: 37, standard_atomic_weight: "72.939289", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "28.6"))
        case .krypton_73_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 37, standard_atomic_weight: "72.939289", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "107")) // TODO: fix
        case .krypton_74:
            return ChemicalElementDetails(self, neutron_count: 38, standard_atomic_weight: "73.9330844", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.minute, value: "11.50"))
        case .krypton_75:
            return ChemicalElementDetails(self, neutron_count: 39, standard_atomic_weight: "74.930946", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.minute, value: "4.29"))
        case .krypton_76:
            return ChemicalElementDetails(self, neutron_count: 40, standard_atomic_weight: "75.925910", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.hour, value: "14.8"))
        case .krypton_77:
            return ChemicalElementDetails(self, neutron_count: 41, standard_atomic_weight: "76.9246700", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.minute, value: "74.4"))
        case .krypton_78:
            return ChemicalElementDetails(self, neutron_count: 42, standard_atomic_weight: "77.9203648", decay_mode: AtomicDecayType.electron_capture(amount: 2), half_life: TimeUnit(type: TimeUnitType.year, value: "9200000000000000000000"))
        case .krypton_79:
            return ChemicalElementDetails(self, neutron_count: 43, standard_atomic_weight: "78.920082", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.hour, value: "35.04"))
        case .krypton_79_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 43, standard_atomic_weight: "78.920082", decay_mode: nil, half_life: TimeUnit(type: TimeUnitType.second, value: "50")) // TODO: fix
        case .krypton_80:
            return ChemicalElementDetails(self, neutron_count: 44, standard_atomic_weight: "79.9163790")
        case .krypton_81:
            return ChemicalElementDetails(self, neutron_count: 45, standard_atomic_weight: "80.9165920", decay_mode: AtomicDecayType.electron_capture(amount: 1), half_life: TimeUnit(type: TimeUnitType.year, value: "229000"))
        case .krypton_81_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 45, standard_atomic_weight: "80.9165920", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(type: TimeUnitType.second, value: "13.10"))
        case .krypton_82:
            return ChemicalElementDetails(self, neutron_count: 46, standard_atomic_weight: "81.9134836")
        case .krypton_83:
            return ChemicalElementDetails(self, neutron_count: 47, standard_atomic_weight: "82.914136")
        case .krypton_83_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 47, standard_atomic_weight: "82.914136", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "154.4")) // TODO: fix
        case .krypton_83_isomer_2:
            return ChemicalElementDetails(self, neutron_count: 47, standard_atomic_weight: "82.914136", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(type: TimeUnitType.hour, value: "1.83"))
        case .krypton_84:
            return ChemicalElementDetails(self, neutron_count: 48, standard_atomic_weight: "83.911507")
        case .krypton_84_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 48, standard_atomic_weight: "83.911507", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "1.89")) // TODO: fix
        case .krypton_85:
            return ChemicalElementDetails(self, neutron_count: 49, standard_atomic_weight: "84.9125273", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.year, value: "10.776"))
        case .krypton_85_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 49, standard_atomic_weight: "84.9125273", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.hour, value: "4.480"))
        case .krypton_85_isomer_2:
            return ChemicalElementDetails(self, neutron_count: 49, standard_atomic_weight: "84.9125273", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "1.6")) // TODO: fix
        case .krypton_86:
            return ChemicalElementDetails(self, neutron_count: 50, standard_atomic_weight: "85.91061073")
        case .krypton_87:
            return ChemicalElementDetails(self, neutron_count: 51, standard_atomic_weight: "86.91335486", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.minute, value: "76.3"))
        case .krypton_88:
            return ChemicalElementDetails(self, neutron_count: 52, standard_atomic_weight: "87.914447", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.hour, value: "2.84"))
        case .krypton_89:
            return ChemicalElementDetails(self, neutron_count: 53, standard_atomic_weight: "88.91763", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.minute, value: "3.15"))
        case .krypton_90:
            return ChemicalElementDetails(self, neutron_count: 54, standard_atomic_weight: "89.919517", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "32.32"), decays_into_isomer: 1)
        case .krypton_91:
            return ChemicalElementDetails(self, neutron_count: 55, standard_atomic_weight: "90.92345", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "8.57"))
        case .krypton_92:
            return ChemicalElementDetails(self, neutron_count: 56, standard_atomic_weight: "91.926156", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "1.840"))
        case .krypton_93:
            return ChemicalElementDetails(self, neutron_count: 57, standard_atomic_weight: "92.93127", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "1.286"))
        case .krypton_94:
            return ChemicalElementDetails(self, neutron_count: 58, standard_atomic_weight: "93.93436", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "210"))
        case .krypton_95:
            return ChemicalElementDetails(self, neutron_count: 59, standard_atomic_weight: "94.93984", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "114"))
        case .krypton_96:
            return ChemicalElementDetails(self, neutron_count: 60, standard_atomic_weight: "95.942998", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "80"))
        case .krypton_97:
            return ChemicalElementDetails(self, neutron_count: 61, standard_atomic_weight: "96.94856", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "63"))
        case .krypton_98:
            return ChemicalElementDetails(self, neutron_count: 62, standard_atomic_weight: "97.95191", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "46")) // TODO: fix
        case .krypton_99:
            return ChemicalElementDetails(self, neutron_count: 63, standard_atomic_weight: "98.95760", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "40")) // TODO: fix
        case .krypton_100:
            return ChemicalElementDetails(self, neutron_count: 64, standard_atomic_weight: "99.96114", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "10")) // TODO: fix
        case .krypton_101:
            return ChemicalElementDetails(self, neutron_count: 65, standard_atomic_weight: "unknown", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "636")) // TODO: fix
        case .krypton_102:
            return ChemicalElementDetails(self, neutron_count: 66, standard_atomic_weight: "0", decay_mode: nil, half_life: nil) // TODO: fix
        }
    }
}
