//
//  YttriumIsotope.swift
//  
//
//  Created by Evan Anderson on 5/22/23.
//

import Foundation
import SwiftUnits

// https://en.wikipedia.org/wiki/Isotopes_of_yttrium
public enum YttriumIsotope : String, ChemicalElementIsotope {
    case yttrium_76
    case yttrium_77
    case yttrium_78
    case yttrium_78_isomer_1
    case yttrium_79
    case yttrium_80
    case yttrium_80_isomer_1
    case yttrium_80_isomer_2
    case yttrium_81
    case yttrium_82
    case yttrium_82_isomer_1
    case yttrium_82_isomer_2
    case yttrium_83
    case yttrium_83_isomer_1
    case yttrium_84
    case yttrium_84_isomer_1
    case yttrium_85
    case yttrium_85_isomer_1
    case yttrium_85_isomer_2
    case yttrium_86
    case yttrium_86_isomer_1
    case yttrium_86_isomer_2
    case yttrium_87
    case yttrium_87_isomer_1
    case yttrium_88
    case yttrium_88_isomer_1
    case yttrium_88_isomer_2
    case yttrium_89
    case yttrium_89_isomer_1
    case yttrium_90
    case yttrium_90_isomer_1
    case yttrium_91
    case yttrium_91_isomer_1
    case yttrium_92
    case yttrium_93
    case yttrium_93_isomer_1
    case yttrium_94
    case yttrium_95
    case yttrium_96
    case yttrium_96_isomer_1
    case yttrium_97
    case yttrium_97_isomer_1
    case yttrium_97_isomer_2
    case yttrium_98
    case yttrium_98_isomer_1
    case yttrium_98_isomer_2
    case yttrium_98_isomer_3
    case yttrium_98_isomer_4
    case yttrium_99
    case yttrium_99_isomer_1
    case yttrium_100
    case yttrium_100_isomer_1
    case yttrium_101
    case yttrium_102
    case yttrium_102_isomer_1
    case yttrium_103
    case yttrium_104
    case yttrium_105
    case yttrium_106
    case yttrium_107
    case yttrium_108
    case yttrium_109
    case yttrium_110
    case yttrium_111
    
    public var element : ChemicalElement {
        return ChemicalElement.yttrium
    }
    
    public var load_details : ChemicalElementDetails {
        switch self {
        case .yttrium_76:
            return ChemicalElementDetails(self, neutron_count: 37, standard_atomic_weight: "75.95845", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "500")) // TODO: fix
        case .yttrium_77:
            return ChemicalElementDetails(self, neutron_count: 38, standard_atomic_weight: "76.94965", decay_mode: AtomicDecayType.proton_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "63"))
        case .yttrium_78:
            return ChemicalElementDetails(self, neutron_count: 39, standard_atomic_weight: "77.94361", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "54"))
        case .yttrium_78_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 39, standard_atomic_weight: "77.94361", decay_mode: nil, half_life: TimeUnit(type: TimeUnitType.second, value: "5.8")) // TODO: fix
        case .yttrium_79:
            return ChemicalElementDetails(self, neutron_count: 40, standard_atomic_weight: "78.93735", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "14.8"))
        case .yttrium_80:
            return ChemicalElementDetails(self, neutron_count: 41, standard_atomic_weight: "79.93428", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "30.1"))
        case .yttrium_80_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 41, standard_atomic_weight: "79.93428", decay_mode: nil, half_life: TimeUnit(type: TimeUnitType.second, value: "4.8")) // TODO: fix
        case .yttrium_80_isomer_2:
            return ChemicalElementDetails(self, neutron_count: 41, standard_atomic_weight: "79.93428", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "4.7")) // TODO: fix
        case .yttrium_81:
            return ChemicalElementDetails(self, neutron_count: 42, standard_atomic_weight: "80.92913", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "70.4"))
        case .yttrium_82:
            return ChemicalElementDetails(self, neutron_count: 43, standard_atomic_weight: "81.92679", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "8.30"))
        case .yttrium_82_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 43, standard_atomic_weight: "81.92679", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "268")) // TODO: fix
        case .yttrium_82_isomer_2:
            return ChemicalElementDetails(self, neutron_count: 43, standard_atomic_weight: "81.92679", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "147")) // TODO: fix
        case .yttrium_83:
            return ChemicalElementDetails(self, neutron_count: 44, standard_atomic_weight: "82.92235", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.minute, value: "7.08"))
        case .yttrium_83_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 44, standard_atomic_weight: "82.92235", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.minute, value: "2.85"))
        case .yttrium_84:
            return ChemicalElementDetails(self, neutron_count: 45, standard_atomic_weight: "83.92039", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.minute, value: "39.5"))
        case .yttrium_84_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 45, standard_atomic_weight: "83.92039", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "4.6"))
        case .yttrium_85:
            return ChemicalElementDetails(self, neutron_count: 46, standard_atomic_weight: "84.916433", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.hour, value: "2.68"))
        case .yttrium_85_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 46, standard_atomic_weight: "84.916433", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.hour, value: "4.86"))
        case .yttrium_85_isomer_2:
            return ChemicalElementDetails(self, neutron_count: 46, standard_atomic_weight: "84.916433", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "178")) // TODO: fix
        case .yttrium_86:
            return ChemicalElementDetails(self, neutron_count: 47, standard_atomic_weight: "85.914886", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.hour, value: "14.74"))
        case .yttrium_86_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 47, standard_atomic_weight: "85.914886", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(type: TimeUnitType.minute, value: "48"))
        case .yttrium_86_isomer_2:
            return ChemicalElementDetails(self, neutron_count: 47, standard_atomic_weight: "85.914886", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "125")) // TODO: fix
        case .yttrium_87:
            return ChemicalElementDetails(self, neutron_count: 48, standard_atomic_weight: "86.9108757", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.hour, value: "79.8"))
        case .yttrium_87_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 48, standard_atomic_weight: "86.9108757", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(type: TimeUnitType.hour, value: "13.37"))
        case .yttrium_88:
            return ChemicalElementDetails(self, neutron_count: 49, standard_atomic_weight: "87.9095011", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.day, value: "106.616"))
        case .yttrium_88_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 49, standard_atomic_weight: "87.9095011", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "13.9"))
        case .yttrium_88_isomer_2:
            return ChemicalElementDetails(self, neutron_count: 49, standard_atomic_weight: "87.9095011", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "300")) // TODO: fix
        case .yttrium_89:
            return ChemicalElementDetails(self, neutron_count: 50, standard_atomic_weight: "88.9058483")
        case .yttrium_89_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 50, standard_atomic_weight: "88.9058483", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(type: TimeUnitType.second, value: "15.663"))
        case .yttrium_90:
            return ChemicalElementDetails(self, neutron_count: 51, standard_atomic_weight: "89.9071519", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.hour, value: "64.053"))
        case .yttrium_90_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 51, standard_atomic_weight: "89.9071519", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(type: TimeUnitType.hour, value: "3.19"))
        case .yttrium_91:
            return ChemicalElementDetails(self, neutron_count: 52, standard_atomic_weight: "90.907305", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.day, value: "58.51"))
        case .yttrium_91_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 52, standard_atomic_weight: "90.907305", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(type: TimeUnitType.minute, value: "49.71"))
        case .yttrium_92:
            return ChemicalElementDetails(self, neutron_count: 53, standard_atomic_weight: "91.908949", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.hour, value: "3.54"))
        case .yttrium_93:
            return ChemicalElementDetails(self, neutron_count: 54, standard_atomic_weight: "92.909583", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.hour, value: "10.18"))
        case .yttrium_93_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 54, standard_atomic_weight: "92.909583", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "820"))
        case .yttrium_94:
            return ChemicalElementDetails(self, neutron_count: 55, standard_atomic_weight: "93.911595", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.minute, value: "18.7"))
        case .yttrium_95:
            return ChemicalElementDetails(self, neutron_count: 56, standard_atomic_weight: "94.912821", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.minute, value: "10.3"))
        case .yttrium_96:
            return ChemicalElementDetails(self, neutron_count: 57, standard_atomic_weight: "95.915891", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "5.34"))
        case .yttrium_96_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 57, standard_atomic_weight: "95.915891", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "9.6"))
        case .yttrium_97:
            return ChemicalElementDetails(self, neutron_count: 58, standard_atomic_weight: "96.918134", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "3.75"))
        case .yttrium_97_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 58, standard_atomic_weight: "96.918134", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "1.17"))
        case .yttrium_97_isomer_2:
            return ChemicalElementDetails(self, neutron_count: 58, standard_atomic_weight: "96.918134", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "142")) // TODO: fix
        case .yttrium_98:
            return ChemicalElementDetails(self, neutron_count: 59, standard_atomic_weight: "97.922203", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "0.548"))
        case .yttrium_98_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 59, standard_atomic_weight: "97.922203", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "620")) // TODO: fix
        case .yttrium_98_isomer_2:
            return ChemicalElementDetails(self, neutron_count: 59, standard_atomic_weight: "97.922203", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "2.0"))
        case .yttrium_98_isomer_3:
            return ChemicalElementDetails(self, neutron_count: 59, standard_atomic_weight: "97.922203", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "7.6")) // TODO: fix
        case .yttrium_98_isomer_4:
            return ChemicalElementDetails(self, neutron_count: 59, standard_atomic_weight: "97.922203", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "0.83")) // TODO: fix
        case .yttrium_99:
            return ChemicalElementDetails(self, neutron_count: 60, standard_atomic_weight: "98.924636", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "1.470"))
        case .yttrium_99_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 60, standard_atomic_weight: "98.924636", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "8.6")) // TODO: fix
        case .yttrium_100:
            return ChemicalElementDetails(self, neutron_count: 61, standard_atomic_weight: "99.92776", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "735"))
        case .yttrium_100_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 61, standard_atomic_weight: "99.92776", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "940"))
        case .yttrium_101:
            return ChemicalElementDetails(self, neutron_count: 62, standard_atomic_weight: "100.93031", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "426"))
        case .yttrium_102:
            return ChemicalElementDetails(self, neutron_count: 63, standard_atomic_weight: "101.93356", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "0.30"))
        case .yttrium_102_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 63, standard_atomic_weight: "101.93356", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "360"))
        case .yttrium_103:
            return ChemicalElementDetails(self, neutron_count: 64, standard_atomic_weight: "102.93673", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "224"))
        case .yttrium_104:
            return ChemicalElementDetails(self, neutron_count: 65, standard_atomic_weight: "103.94105", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "180"))
        case .yttrium_105:
            return ChemicalElementDetails(self, neutron_count: 66, standard_atomic_weight: "104.94487", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "60"))
        case .yttrium_106:
            return ChemicalElementDetails(self, neutron_count: 67, standard_atomic_weight: "105.94979", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "50"))
        case .yttrium_107:
            return ChemicalElementDetails(self, neutron_count: 68, standard_atomic_weight: "106.95414", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "30")) // TODO: fix
        case .yttrium_108:
            return ChemicalElementDetails(self, neutron_count: 69, standard_atomic_weight: "107.95948", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "20")) // TODO: fix
        case .yttrium_109:
            return ChemicalElementDetails(self, neutron_count: 70, standard_atomic_weight: "0", decay_mode: nil, half_life: nil) // TODO: fix
        case .yttrium_110:
            return ChemicalElementDetails(self, neutron_count: 71, standard_atomic_weight: "0", decay_mode: nil, half_life: nil) // TODO: fix
        case .yttrium_111:
            return ChemicalElementDetails(self, neutron_count: 72, standard_atomic_weight: "0", decay_mode: nil, half_life: nil) // TODO: fix
        }
    }
}
