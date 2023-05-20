//
//  BromineIsotope.swift
//  
//
//  Created by Evan Anderson on 5/20/23.
//

import Foundation

// https://en.wikipedia.org/wiki/Isotopes_of_bromine
public enum BromineIsotope : String, ChemicalElementIsotope {
    case bromine_68
    case bromine_69
    case bromine_70
    case bromine_70_isomer_1
    case bromine_71
    case bromine_72
    case bromine_72_isomer_1
    case bromine_73
    case bromine_74
    case bromine_74_isomer_1
    case bromine_75
    case bromine_76
    case bromine_76_isomer_1
    case bromine_77
    case bromine_77_isomer_1
    case bromine_78
    case bromine_78_isomer_1
    case bromine_79
    case bromine_79_isomer_1
    case bromine_80
    case bromine_80_isomer_1
    case bromine_81
    case bromine_81_isomer_1
    case bromine_82
    case bromine_82_isomer_1
    case bromine_83
    case bromine_83_isomer_1
    case bromine_84
    case bromine_84_isomer_1
    case bromine_84_isomer_2
    case bromine_85
    case bromine_86
    case bromine_87
    case bromine_88
    case bromine_88_isomer_1
    case bromine_89
    case bromine_90
    case bromine_91
    case bromine_92
    case bromine_93
    case bromine_94
    case bromine_95
    case bromine_96
    case bromine_97
    case bromine_98
    case bromine_101
    
    public var element : ChemicalElement {
        return ChemicalElement.bromine
    }
    
    public var load_details : ChemicalElementDetails {
        switch self {
        case .bromine_68:
            return ChemicalElementDetails(self, neutron_count: 33, standard_atomic_weight: "67.95836", decay_mode: AtomicDecayType.proton_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "50"))
        case .bromine_69:
            return ChemicalElementDetails(self, neutron_count: 34, standard_atomic_weight: "68.95011", decay_mode: AtomicDecayType.proton_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "23"))
        case .bromine_70:
            return ChemicalElementDetails(self, neutron_count: 35, standard_atomic_weight: "69.94479", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "79.1"))
        case .bromine_70_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 35, standard_atomic_weight: "69.94479", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "2.2"))
        case .bromine_71:
            return ChemicalElementDetails(self, neutron_count: 36, standard_atomic_weight: "70.93874", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "21.4"))
        case .bromine_72:
            return ChemicalElementDetails(self, neutron_count: 37, standard_atomic_weight: "71.93664", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "78.6"))
        case .bromine_72_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 37, standard_atomic_weight: "71.93664", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(type: TimeUnitType.second, value: "10.6"))
        case .bromine_73:
            return ChemicalElementDetails(self, neutron_count: 38, standard_atomic_weight: "72.93169", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.minute, value: "3.4"))
        case .bromine_74:
            return ChemicalElementDetails(self, neutron_count: 39, standard_atomic_weight: "73.929891", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.minute, value: "25.4"))
        case .bromine_74_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 39, standard_atomic_weight: "73.929891", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.minute, value: "46"))
        case .bromine_75:
            return ChemicalElementDetails(self, neutron_count: 40, standard_atomic_weight: "74.925776", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.minute, value: "96.7"))
        case .bromine_76:
            return ChemicalElementDetails(self, neutron_count: 41, standard_atomic_weight: "75.924541", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.hour, value: "16.2"))
        case .bromine_76_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 41, standard_atomic_weight: "75.924541", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(type: TimeUnitType.second, value: "1.31"))
        case .bromine_77:
            return ChemicalElementDetails(self, neutron_count: 42, standard_atomic_weight: "76.921379", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.hour, value: "57.036"))
        case .bromine_77_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 42, standard_atomic_weight: "76.921379", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(type: TimeUnitType.minute, value: "4.28"))
        case .bromine_78:
            return ChemicalElementDetails(self, neutron_count: 43, standard_atomic_weight: "77.921146", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.minute, value: "6.46"))
        case .bromine_78_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 43, standard_atomic_weight: "77.921146", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "119.2")) // TODO: fix
        case .bromine_79:
            return ChemicalElementDetails(self, neutron_count: 44, standard_atomic_weight: "78.9183371")
        case .bromine_79_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 44, standard_atomic_weight: "78.9183371", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(type: TimeUnitType.second, value: "4.86"))
        case .bromine_80:
            return ChemicalElementDetails(self, neutron_count: 45, standard_atomic_weight: "79.9185293", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.minute, value: "17.68"))
        case .bromine_80_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 45, standard_atomic_weight: "79.9185293", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(type: TimeUnitType.hour, value: "4.4205"))
        case .bromine_81:
            return ChemicalElementDetails(self, neutron_count: 46, standard_atomic_weight: "80.9162906")
        case .bromine_81_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 46, standard_atomic_weight: "80.9162906", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "34.6")) // TODO: fix
        case .bromine_82:
            return ChemicalElementDetails(self, neutron_count: 47, standard_atomic_weight: "81.9168041", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.hour, value: "35.282"))
        case .bromine_82_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 47, standard_atomic_weight: "81.9168041", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(type: TimeUnitType.minute, value: "6.13"))
        case .bromine_83:
            return ChemicalElementDetails(self, neutron_count: 48, standard_atomic_weight: "82.915180", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.hour, value: "2.40"))
        case .bromine_83_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 48, standard_atomic_weight: "82.915180", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "700")) // TODO: fix
        case .bromine_84:
            return ChemicalElementDetails(self, neutron_count: 49, standard_atomic_weight: "83.916479", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.minute, value: "31.80"))
        case .bromine_84_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 49, standard_atomic_weight: "83.916479", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.minute, value: "6.0"))
        case .bromine_84_isomer_2:
            return ChemicalElementDetails(self, neutron_count: 49, standard_atomic_weight: "83.916479", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "139")) // TODO: fix
        case .bromine_85:
            return ChemicalElementDetails(self, neutron_count: 50, standard_atomic_weight: "84.915608", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.minute, value: "2.90"))
        case .bromine_86:
            return ChemicalElementDetails(self, neutron_count: 51, standard_atomic_weight: "85.918798", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.second, value: "55.1"))
        case .bromine_87:
            return ChemicalElementDetails(self, neutron_count: 52, standard_atomic_weight: "86.920711", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.second, value: "55.65"))
        case .bromine_88:
            return ChemicalElementDetails(self, neutron_count: 53, standard_atomic_weight: "87.92407", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.second, value: "16.29"))
        case .bromine_88_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 53, standard_atomic_weight: "87.92407", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "5.4")) // TODO: fix
        case .bromine_89:
            return ChemicalElementDetails(self, neutron_count: 54, standard_atomic_weight: "88.92639", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.second, value: "4.40"))
        case .bromine_90:
            return ChemicalElementDetails(self, neutron_count: 55, standard_atomic_weight: "89.93063", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.second, value: "1.91"))
        case .bromine_91:
            return ChemicalElementDetails(self, neutron_count: 56, standard_atomic_weight: "90.93397", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "541"))
        case .bromine_92:
            return ChemicalElementDetails(self, neutron_count: 57, standard_atomic_weight: "91.93926", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.second, value: "0.343"))
        case .bromine_93:
            return ChemicalElementDetails(self, neutron_count: 58, standard_atomic_weight: "92.94305", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "102"))
        case .bromine_94:
            return ChemicalElementDetails(self, neutron_count: 59, standard_atomic_weight: "93.94868", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "70"))
        case .bromine_95:
            return ChemicalElementDetails(self, neutron_count: 60, standard_atomic_weight: "94.95287", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "50")) // TODO: fix
        case .bromine_96:
            return ChemicalElementDetails(self, neutron_count: 61, standard_atomic_weight: "95.95853", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "20")) // TODO: fix
        case .bromine_97:
            return ChemicalElementDetails(self, neutron_count: 62, standard_atomic_weight: "96.96280", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "10")) // TODO: fix
        case .bromine_98:
            return ChemicalElementDetails(self, neutron_count: 63, standard_atomic_weight: "0", decay_mode: nil, half_life: nil) // TODO: fix
        case .bromine_101:
            return ChemicalElementDetails(self, neutron_count: 66, standard_atomic_weight: "0", decay_mode: nil, half_life: nil) // TODO: fix
        }
    }
}
