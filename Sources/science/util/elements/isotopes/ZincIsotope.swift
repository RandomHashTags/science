//
//  ZincIsotope.swift
//  
//
//  Created by Evan Anderson on 5/17/23.
//

import Foundation

// https://en.wikipedia.org/wiki/Isotopes_of_zinc
public enum ZincIsotope : String, ChemicalElementIsotope {
    case zinc_54
    case zinc_55
    case zinc_56
    case zinc_57
    case zinc_58
    case zinc_59
    case zinc_60
    case zinc_61
    case zinc_61_isomer_1
    case zinc_61_isomer_2
    case zinc_61_isomer_3
    case zinc_62
    case zinc_63
    case zinc_64
    case zinc_65
    case zinc_65_isomer_1
    case zinc_66
    case zinc_67
    case zinc_68
    case zinc_69
    case zinc_69_isomer_1
    case zinc_70
    case zinc_71
    case zinc_71_isomer_1
    case zinc_72
    case zinc_73
    case zinc_73_isomer_1
    case zinc_73_isomer_2
    case zinc_74
    case zinc_75
    case zinc_76
    case zinc_77
    case zinc_77_isomer_1
    case zinc_78
    case zinc_78_isomer_1
    case zinc_79
    case zinc_80
    case zinc_81
    case zinc_82
    case zinc_83
    
    public var element : ChemicalElement {
        return ChemicalElement.zinc
    }
    
    public var load_details : ChemicalElementDetails {
        switch self {
        case .zinc_54:
            return ChemicalElementDetails(self, neutron_count: 24, standard_atomic_weight: "53.99295", decay_mode: AtomicDecayType.proton_emission(amount: 2), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "1.59"))
        case .zinc_55:
            return ChemicalElementDetails(self, neutron_count: 25, standard_atomic_weight: "54.98398", decay_mode: AtomicDecayType.proton_emission(amount: 2), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "20"))
        case .zinc_56:
            return ChemicalElementDetails(self, neutron_count: 26, standard_atomic_weight: "55.97238", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "36"))
        case .zinc_57:
            return ChemicalElementDetails(self, neutron_count: 27, standard_atomic_weight: "56.96479", decay_mode: AtomicDecayType.beta_plus_proton_emission, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "38"))
        case .zinc_58:
            return ChemicalElementDetails(self, neutron_count: 28, standard_atomic_weight: "57.95459", decay_mode: AtomicDecayType.beta_plus_proton_emission, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "84"))
        case .zinc_59:
            return ChemicalElementDetails(self, neutron_count: 29, standard_atomic_weight: "58.94926", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "182.0"))
        case .zinc_60:
            return ChemicalElementDetails(self, neutron_count: 30, standard_atomic_weight: "59.941827", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.minute, value: "2.38"))
        case .zinc_61:
            return ChemicalElementDetails(self, neutron_count: 31, standard_atomic_weight: "60.939511", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "89.1"))
        case .zinc_61_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 31, standard_atomic_weight: "60.939511", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "429")) // TODO: fix
        case .zinc_61_isomer_2:
            return ChemicalElementDetails(self, neutron_count: 31, standard_atomic_weight: "60.939511", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "140")) // TODO: fix
        case .zinc_61_isomer_3:
            return ChemicalElementDetails(self, neutron_count: 31, standard_atomic_weight: "60.939511", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "129")) // TODO: fix
        case .zinc_62:
            return ChemicalElementDetails(self, neutron_count: 32, standard_atomic_weight: "61.934330", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.hour, value: "9.186"))
        case .zinc_63:
            return ChemicalElementDetails(self, neutron_count: 33, standard_atomic_weight: "62.9332116", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.minute, value: "38.47"))
        case .zinc_64:
            return ChemicalElementDetails(self, neutron_count: 34, standard_atomic_weight: "63.9291422")
        case .zinc_65:
            return ChemicalElementDetails(self, neutron_count: 35, standard_atomic_weight: "64.9292410", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.day, value: "243.66"))
        case .zinc_65_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 35, standard_atomic_weight: "64.9292410", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "1.6")) // TODO: fix
        case .zinc_66:
            return ChemicalElementDetails(self, neutron_count: 36, standard_atomic_weight: "65.9260334")
        case .zinc_67:
            return ChemicalElementDetails(self, neutron_count: 37, standard_atomic_weight: "66.9271273")
        case .zinc_68:
            return ChemicalElementDetails(self, neutron_count: 38, standard_atomic_weight: "67.9248442")
        case .zinc_69:
            return ChemicalElementDetails(self, neutron_count: 39, standard_atomic_weight: "68.9265503", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.minute, value: "56.4"))
        case .zinc_69_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 39, standard_atomic_weight: "68.9265503", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(type: TimeUnitType.hour, value: "13.76"))
        case .zinc_70:
            return ChemicalElementDetails(self, neutron_count: 40, standard_atomic_weight: "69.9253193")
        case .zinc_71:
            return ChemicalElementDetails(self, neutron_count: 41, standard_atomic_weight: "70.927722", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.minute, value: "2.45"))
        case .zinc_71_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 41, standard_atomic_weight: "70.927722", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.hour, value: "3.96"))
        case .zinc_72:
            return ChemicalElementDetails(self, neutron_count: 42, standard_atomic_weight: "71.926858", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.hour, value: "46.5"))
        case .zinc_73:
            return ChemicalElementDetails(self, neutron_count: 43, standard_atomic_weight: "72.92978", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "23.5"))
        case .zinc_73_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 43, standard_atomic_weight: "72.92978", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "13.0")) // TODO: fix
        case .zinc_73_isomer_2:
            return ChemicalElementDetails(self, neutron_count: 43, standard_atomic_weight: "72.92978", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "5.8"))
        case .zinc_74:
            return ChemicalElementDetails(self, neutron_count: 44, standard_atomic_weight: "73.92946", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "95.6"))
        case .zinc_75:
            return ChemicalElementDetails(self, neutron_count: 45, standard_atomic_weight: "74.93294", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "10.2"))
        case .zinc_76:
            return ChemicalElementDetails(self, neutron_count: 46, standard_atomic_weight: "75.93329", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "5.7"))
        case .zinc_77:
            return ChemicalElementDetails(self, neutron_count: 47, standard_atomic_weight: "76.93696", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "2.08"))
        case .zinc_77_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 47, standard_atomic_weight: "76.93696", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(type: TimeUnitType.second, value: "1.05"))
        case .zinc_78:
            return ChemicalElementDetails(self, neutron_count: 48, standard_atomic_weight: "77.93844", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "1.47"))
        case .zinc_78_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 48, standard_atomic_weight: "77.93844", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "319")) // TODO: fix
        case .zinc_79:
            return ChemicalElementDetails(self, neutron_count: 49, standard_atomic_weight: "78.94265", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "0.995"))
        case .zinc_80:
            return ChemicalElementDetails(self, neutron_count: 50, standard_atomic_weight: "79.94434", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "545"))
        case .zinc_81:
            return ChemicalElementDetails(self, neutron_count: 51, standard_atomic_weight: "80.95048", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "290"))
        case .zinc_82:
            return ChemicalElementDetails(self, neutron_count: 52, standard_atomic_weight: "81.95442", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "100"))
        case .zinc_83:
            return ChemicalElementDetails(self, neutron_count: 53, standard_atomic_weight: "82.96103", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "80")) // TODO: fix
        }
    }
}
