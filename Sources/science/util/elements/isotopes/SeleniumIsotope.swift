//
//  SeleniumIsotope.swift
//  
//
//  Created by Evan Anderson on 5/20/23.
//

import Foundation
import SwiftUnits

// https://en.wikipedia.org/wiki/Isotopes_of_selenium
public enum SeleniumIsotope : String, ChemicalElementIsotope {
    case selenium_65
    case selenium_66
    case selenium_67
    case selenium_68
    case selenium_69
    case selenium_69_isomer_1
    case selenium_69_isomer_2
    case selenium_70
    case selenium_71
    case selenium_71_isomer_1
    case selenium_71_isomer_2
    case selenium_72
    case selenium_73
    case selenium_73_isomer_1
    case selenium_74
    case selenium_75
    case selenium_76
    case selenium_77
    case selenium_77_isomer_1
    case selenium_78
    case selenium_79
    case selenium_79_isomer_1
    case selenium_80
    case selenium_81
    case selenium_81_isomer_1
    case selenium_82
    case selenium_83
    case selenium_83_isomer_1
    case selenium_84
    case selenium_85
    case selenium_86
    case selenium_87
    case selenium_88
    case selenium_89
    case selenium_90
    case selenium_91
    case selenium_92
    case selenium_93
    case selenium_94
    
    public var element : ChemicalElement {
        return ChemicalElement.selenium
    }
    
    public var load_details : ChemicalElementDetails {
        switch self {
        case .selenium_65:
            return ChemicalElementDetails(self, neutron_count: 31, standard_atomic_weight: "64.96466", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "49"))
        case .selenium_66:
            return ChemicalElementDetails(self, neutron_count: 32, standard_atomic_weight: "65.95521", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "33"))
        case .selenium_67:
            return ChemicalElementDetails(self, neutron_count: 33, standard_atomic_weight: "66.95009", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "133"))
        case .selenium_68:
            return ChemicalElementDetails(self, neutron_count: 34, standard_atomic_weight: "67.94180", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "35.5"))
        case .selenium_69:
            return ChemicalElementDetails(self, neutron_count: 35, standard_atomic_weight: "68.93956", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "27.4"))
        case .selenium_69_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 35, standard_atomic_weight: "68.93956", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "2.0")) // TODO: fix
        case .selenium_69_isomer_2:
            return ChemicalElementDetails(self, neutron_count: 35, standard_atomic_weight: "68.93956", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "955")) // TODO: fix
        case .selenium_70:
            return ChemicalElementDetails(self, neutron_count: 36, standard_atomic_weight: "69.93339", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.minute, value: "41.1"))
        case .selenium_71:
            return ChemicalElementDetails(self, neutron_count: 37, standard_atomic_weight: "70.93224", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.minute, value: "4.74"))
        case .selenium_71_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 37, standard_atomic_weight: "70.93224", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "5.6")) // TODO: fix
        case .selenium_71_isomer_2:
            return ChemicalElementDetails(self, neutron_count: 37, standard_atomic_weight: "70.93224", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "19.0")) // TODO: fix
        case .selenium_72:
            return ChemicalElementDetails(self, neutron_count: 38, standard_atomic_weight: "71.927112", decay_mode: AtomicDecayType.electron_capture(amount: 1), half_life: TimeUnit(type: TimeUnitType.day, value: "8.40"))
        case .selenium_73:
            return ChemicalElementDetails(self, neutron_count: 39, standard_atomic_weight: "72.926765", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.hour, value: "7.15"))
        case .selenium_73_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 39, standard_atomic_weight: "72.926765", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(type: TimeUnitType.minute, value: "39.8"))
        case .selenium_74:
            return ChemicalElementDetails(self, neutron_count: 40, standard_atomic_weight: "73.9224764")
        case .selenium_75:
            return ChemicalElementDetails(self, neutron_count: 41, standard_atomic_weight: "74.9225234", decay_mode: AtomicDecayType.electron_capture(amount: 1), half_life: TimeUnit(type: TimeUnitType.day, value: "119.779"))
        case .selenium_76:
            return ChemicalElementDetails(self, neutron_count: 42, standard_atomic_weight: "75.9192136")
        case .selenium_77:
            return ChemicalElementDetails(self, neutron_count: 43, standard_atomic_weight: "76.9199140")
        case .selenium_77_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 43, standard_atomic_weight: "76.9199140", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(type: TimeUnitType.second, value: "17.36"))
        case .selenium_78:
            return ChemicalElementDetails(self, neutron_count: 44, standard_atomic_weight: "77.9173091")
        case .selenium_79:
            return ChemicalElementDetails(self, neutron_count: 45, standard_atomic_weight: "78.9184991", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.year, value: "327000"))
        case .selenium_79_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 45, standard_atomic_weight: "78.9184991", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(type: TimeUnitType.minute, value: "3.92"))
        case .selenium_80:
            return ChemicalElementDetails(self, neutron_count: 46, standard_atomic_weight: "79.9165213")
        case .selenium_81:
            return ChemicalElementDetails(self, neutron_count: 47, standard_atomic_weight: "80.9179925", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.minute, value: "18.45"))
        case .selenium_81_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 47, standard_atomic_weight: "80.9179925", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(type: TimeUnitType.minute, value: "57.28"))
        case .selenium_82:
            return ChemicalElementDetails(self, neutron_count: 48, standard_atomic_weight: "81.9166994", decay_mode: AtomicDecayType.beta_minus(amount: 2), half_life: TimeUnit(type: TimeUnitType.year, value: "97000000000000000000"))
        case .selenium_83:
            return ChemicalElementDetails(self, neutron_count: 49, standard_atomic_weight: "82.919118", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.minute, value: "22.3"))
        case .selenium_83_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 49, standard_atomic_weight: "82.919118", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "70.1"))
        case .selenium_84:
            return ChemicalElementDetails(self, neutron_count: 50, standard_atomic_weight: "83.918462", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.minute, value: "3.1"))
        case .selenium_85:
            return ChemicalElementDetails(self, neutron_count: 51, standard_atomic_weight: "84.92225", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "31.7"))
        case .selenium_86:
            return ChemicalElementDetails(self, neutron_count: 52, standard_atomic_weight: "85.924272", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "15.3"))
        case .selenium_87:
            return ChemicalElementDetails(self, neutron_count: 53, standard_atomic_weight: "86.92852", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "5.50"))
        case .selenium_88:
            return ChemicalElementDetails(self, neutron_count: 54, standard_atomic_weight: "87.93142", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "1.53"))
        case .selenium_89:
            return ChemicalElementDetails(self, neutron_count: 55, standard_atomic_weight: "88.93645", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "0.41"))
        case .selenium_90:
            return ChemicalElementDetails(self, neutron_count: 56, standard_atomic_weight: "89.93996", decay_mode: AtomicDecayType.beta_minus_neutron_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "300"))
        case .selenium_91:
            return ChemicalElementDetails(self, neutron_count: 57, standard_atomic_weight: "90.94596", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "270"))
        case .selenium_92:
            return ChemicalElementDetails(self, neutron_count: 58, standard_atomic_weight: "91.94992", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "100"))
        case .selenium_93:
            return ChemicalElementDetails(self, neutron_count: 59, standard_atomic_weight: "92.95629", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "50")) // TODO: fix
        case .selenium_94:
            return ChemicalElementDetails(self, neutron_count: 60, standard_atomic_weight: "93.96049", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "20")) // TODO: fix
        }
    }
}
