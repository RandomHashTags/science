//
//  GermaniumIsotope.swift
//  
//
//  Created by Evan Anderson on 5/19/23.
//

import Foundation

// https://en.wikipedia.org/wiki/Isotopes_of_germanium
public enum GermaniumIsotope : String, ChemicalElementIsotope {
    case germanium_58
    case germanium_59
    case germanium_60
    case germanium_61
    case germanium_62
    case germanium_63
    case germanium_64
    case germanium_65
    case germanium_66
    case germanium_67
    case germanium_67_isomer_1
    case germanium_67_isomer_2
    case germanium_68
    case germanium_69
    case germanium_69_isomer_1
    case germanium_69_isomer_2
    case germanium_70
    case germanium_71
    case germanium_71_isomer_1
    case germanium_72
    case germanium_72_isomer_1
    case germanium_73
    case germanium_73_isomer_1
    case germanium_73_isomer_2
    case germanium_74
    case germanium_75
    case germanium_75_isomer_1
    case germanium_75_isomer_2
    case germanium_76
    case germanium_77
    case germanium_77_isomer_1
    case germanium_78
    case germanium_79
    case germanium_79_isomer_1
    case germanium_80
    case germanium_81
    case germanium_81_isomer_1
    case germanium_82
    case germanium_83
    case germanium_84
    case germanium_85
    case germanium_86
    case germanium_87
    case germanium_88
    case germanium_89
    
    public var element : ChemicalElement {
        return ChemicalElement.germanium
    }
    
    public var load_details : ChemicalElementDetails {
        switch self {
        case .germanium_58:
            return ChemicalElementDetails(self, neutron_count: 26, standard_atomic_weight: "57.99101", decay_mode: AtomicDecayType.proton_emission(amount: 2), half_life: nil) // TODO: fix
        case .germanium_59:
            return ChemicalElementDetails(self, neutron_count: 27, standard_atomic_weight: "58.98175", decay_mode: AtomicDecayType.proton_emission(amount: 2), half_life: nil) // TODO: fix
        case .germanium_60:
            return ChemicalElementDetails(self, neutron_count: 28, standard_atomic_weight: "59.97019", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "30"))
        case .germanium_61:
            return ChemicalElementDetails(self, neutron_count: 29, standard_atomic_weight: "60.96379", decay_mode: AtomicDecayType.beta_plus_proton_emission, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "39"))
        case .germanium_62:
            return ChemicalElementDetails(self, neutron_count: 30, standard_atomic_weight: "61.95465", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "129"))
        case .germanium_63:
            return ChemicalElementDetails(self, neutron_count: 31, standard_atomic_weight: "62.94964", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "142"))
        case .germanium_64:
            return ChemicalElementDetails(self, neutron_count: 32, standard_atomic_weight: "63.94165", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "63.7"))
        case .germanium_65:
            return ChemicalElementDetails(self, neutron_count: 33, standard_atomic_weight: "64.93944", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "30.9"))
        case .germanium_66:
            return ChemicalElementDetails(self, neutron_count: 34, standard_atomic_weight: "65.93384", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.hour, value: "2.26"))
        case .germanium_67:
            return ChemicalElementDetails(self, neutron_count: 35, standard_atomic_weight: "66.932734", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.minute, value: "18.9"))
        case .germanium_67_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 35, standard_atomic_weight: "66.932734", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "13.7")) // TODO: fix
        case .germanium_67_isomer_2:
            return ChemicalElementDetails(self, neutron_count: 35, standard_atomic_weight: "66.932734", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "110.9")) // TODO: fix
        case .germanium_68:
            return ChemicalElementDetails(self, neutron_count: 36, standard_atomic_weight: "67.928094", decay_mode: AtomicDecayType.electron_capture(amount: 1), half_life: TimeUnit(type: TimeUnitType.day, value: "271.05"))
        case .germanium_69:
            return ChemicalElementDetails(self, neutron_count: 37, standard_atomic_weight: "68.9279645", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.hour, value: "39.05"))
        case .germanium_69_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 37, standard_atomic_weight: "68.9279645", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "5.1")) // TODO: fix
        case .germanium_69_isomer_2:
            return ChemicalElementDetails(self, neutron_count: 37, standard_atomic_weight: "68.9279645", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "2.81")) // TODO: fix
        case .germanium_70:
            return ChemicalElementDetails(self, neutron_count: 38, standard_atomic_weight: "69.9242474")
        case .germanium_71:
            return ChemicalElementDetails(self, neutron_count: 39, standard_atomic_weight: "70.9249510", decay_mode: AtomicDecayType.electron_capture(amount: 1), half_life: TimeUnit(type: TimeUnitType.day, value: "11.43"))
        case .germanium_71_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 39, standard_atomic_weight: "70.9249510", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "20.40"))
        case .germanium_72:
            return ChemicalElementDetails(self, neutron_count: 40, standard_atomic_weight: "71.9220758")
        case .germanium_72_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 40, standard_atomic_weight: "71.9220758", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "444.2")) // TODO: fix
        case .germanium_73:
            return ChemicalElementDetails(self, neutron_count: 41, standard_atomic_weight: "72.9234589")
        case .germanium_73_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 41, standard_atomic_weight: "72.9234589", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "2.92")) // TODO: fix
        case .germanium_73_isomer_2:
            return ChemicalElementDetails(self, neutron_count: 41, standard_atomic_weight: "72.9234589", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "499")) // TODO: fix
        case .germanium_74:
            return ChemicalElementDetails(self, neutron_count: 42, standard_atomic_weight: "73.9211778")
        case .germanium_75:
            return ChemicalElementDetails(self, neutron_count: 43, standard_atomic_weight: "74.9228589", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.minute, value: "82.78"))
        case .germanium_75_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 43, standard_atomic_weight: "74.9228589", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(type: TimeUnitType.second, value: "47.7"))
        case .germanium_75_isomer_2:
            return ChemicalElementDetails(self, neutron_count: 43, standard_atomic_weight: "74.9228589", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "216")) // TODO: fix
        case .germanium_76:
            return ChemicalElementDetails(self, neutron_count: 44, standard_atomic_weight: "75.9214026", decay_mode: AtomicDecayType.beta_minus(amount: 2), half_life: TimeUnit(type: TimeUnitType.year, value: "1926000000000000000000"))
        case .germanium_77:
            return ChemicalElementDetails(self, neutron_count: 45, standard_atomic_weight: "76.9235486", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.hour, value: "11.30"))
        case .germanium_77_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 45, standard_atomic_weight: "76.9235486", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "52.9"))
        case .germanium_78:
            return ChemicalElementDetails(self, neutron_count: 46, standard_atomic_weight: "77.922853", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.minute, value: "88"))
        case .germanium_79:
            return ChemicalElementDetails(self, neutron_count: 47, standard_atomic_weight: "78.9254", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "18.98"))
        case .germanium_79_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 47, standard_atomic_weight: "78.9254", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "39.0"))
        case .germanium_80:
            return ChemicalElementDetails(self, neutron_count: 48, standard_atomic_weight: "79.92537", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "29.5"))
        case .germanium_81:
            return ChemicalElementDetails(self, neutron_count: 49, standard_atomic_weight: "80.92882", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "7.6"))
        case .germanium_81_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 49, standard_atomic_weight: "80.92882", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "7.6"))
        case .germanium_82:
            return ChemicalElementDetails(self, neutron_count: 50, standard_atomic_weight: "81.92955", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "4.55"))
        case .germanium_83:
            return ChemicalElementDetails(self, neutron_count: 51, standard_atomic_weight: "82.93462", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "1.85"))
        case .germanium_84:
            return ChemicalElementDetails(self, neutron_count: 52, standard_atomic_weight: "83.93747", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "0.947"))
        case .germanium_85:
            return ChemicalElementDetails(self, neutron_count: 53, standard_atomic_weight: "84.94303", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "535"))
        case .germanium_86:
            return ChemicalElementDetails(self, neutron_count: 54, standard_atomic_weight: "85.94649", decay_mode: AtomicDecayType.beta_minus_neutron_emission, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "151"))
        case .germanium_87:
            return ChemicalElementDetails(self, neutron_count: 55, standard_atomic_weight: "86.95251", decay_mode: nil, half_life: TimeUnit(type: TimeUnitType.second, value: "0.14")) // TODO: fix
        case .germanium_88:
            return ChemicalElementDetails(self, neutron_count: 56, standard_atomic_weight: "87.95691", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "300")) // TODO: fix
        case .germanium_89:
            return ChemicalElementDetails(self, neutron_count: 57, standard_atomic_weight: "88.96383", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "151")) // TODO: fix
        }
    }
}
