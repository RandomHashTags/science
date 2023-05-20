//
//  IronIsotope.swift
//  
//
//  Created by Evan Anderson on 5/15/23.
//

import Foundation

// https://en.wikipedia.org/wiki/Isotopes_of_iron
enum IronIsotope : String, ChemicalElementIsotope {
    case iron_45
    case iron_46
    case iron_47
    case iron_48
    case iron_49
    case iron_50
    case iron_51
    case iron_52
    case iron_52_isomer_1
    case iron_53
    case iron_53_isomer_1
    case iron_54
    case iron_54_isomer_1
    case iron_55
    case iron_56
    case iron_57
    case iron_58
    case iron_59
    case iron_60
    case iron_61
    case iron_61_isomer_1
    case iron_62
    case iron_63
    case iron_64
    case iron_65
    case iron_65_isomer_1
    case iron_66
    case iron_67
    case iron_67_isomer_1
    case iron_68
    case iron_69
    case iron_70
    case iron_71
    case iron_72
    
    var element : ChemicalElement {
        return ChemicalElement.iron
    }
    
    var load_details : ChemicalElementDetails {
        switch self {
        case .iron_45:
            return ChemicalElementDetails(self, neutron_count: 19, standard_atomic_weight: "45.01458", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "1.89"))
        case .iron_46:
            return ChemicalElementDetails(self, neutron_count: 20, standard_atomic_weight: "46.00081", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "9"))
        case .iron_47:
            return ChemicalElementDetails(self, neutron_count: 21, standard_atomic_weight: "46.99289", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "21.8"))
        case .iron_48:
            return ChemicalElementDetails(self, neutron_count: 22, standard_atomic_weight: "47.98050", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "44"))
        case .iron_49:
            return ChemicalElementDetails(self, neutron_count: 23, standard_atomic_weight: "48.97361", decay_mode: AtomicDecayType.beta_plus_proton_emission, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "70"))
        case .iron_50:
            return ChemicalElementDetails(self, neutron_count: 24, standard_atomic_weight: "49.96299", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "155"))
        case .iron_51:
            return ChemicalElementDetails(self, neutron_count: 25, standard_atomic_weight: "50.956820", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "305"))
        case .iron_52:
            return ChemicalElementDetails(self, neutron_count: 26, standard_atomic_weight: "51.948114", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.hour, value: "8.275"), decays_into_isomer: 1)
        case .iron_52_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 26, standard_atomic_weight: "51.948114", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "45.9"))
        case .iron_53:
            return ChemicalElementDetails(self, neutron_count: 27, standard_atomic_weight: "52.9453079", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.minute, value: "8.51"))
        case .iron_53_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 27, standard_atomic_weight: "52.9453079", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(type: TimeUnitType.minute, value: "2.526"))
        case .iron_54:
            return ChemicalElementDetails(self, neutron_count: 28, standard_atomic_weight: "53.9396090")
        case .iron_54_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 28, standard_atomic_weight: "53.9396090", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "364")) // TODO: fix
        case .iron_55:
            return ChemicalElementDetails(self, neutron_count: 29, standard_atomic_weight: "54.9382934", decay_mode: AtomicDecayType.electron_capture(amount: 1), half_life: TimeUnit(type: TimeUnitType.year, value: "2.737"))
        case .iron_56:
            return ChemicalElementDetails(self, neutron_count: 30, standard_atomic_weight: "55.9349363")
        case .iron_57:
            return ChemicalElementDetails(self, neutron_count: 31, standard_atomic_weight: "56.9353928")
        case .iron_58:
            return ChemicalElementDetails(self, neutron_count: 32, standard_atomic_weight: "57.9332744")
        case .iron_59:
            return ChemicalElementDetails(self, neutron_count: 33, standard_atomic_weight: "58.9348755", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.day, value: "44.495"))
        case .iron_60:
            return ChemicalElementDetails(self, neutron_count: 34, standard_atomic_weight: "59.934072", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.year, value: "2600000"))
        case .iron_61:
            return ChemicalElementDetails(self, neutron_count: 35, standard_atomic_weight: "60.936745", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.minute, value: "5.98"))
        case .iron_61_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 35, standard_atomic_weight: "60.936745", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "250")) // TODO: fix
        case .iron_62:
            return ChemicalElementDetails(self, neutron_count: 36, standard_atomic_weight: "61.936767", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "68"))
        case .iron_63:
            return ChemicalElementDetails(self, neutron_count: 37, standard_atomic_weight: "62.94037", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "6.1"))
        case .iron_64:
            return ChemicalElementDetails(self, neutron_count: 38, standard_atomic_weight: "63.9412", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "2.0"))
        case .iron_65:
            return ChemicalElementDetails(self, neutron_count: 39, standard_atomic_weight: "64.94538", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "1.3"))
        case .iron_65_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 39, standard_atomic_weight: "64.94538", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "430")) // TODO: fix
        case .iron_66:
            return ChemicalElementDetails(self, neutron_count: 40, standard_atomic_weight: "65.94678", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "440"))
        case .iron_67:
            return ChemicalElementDetails(self, neutron_count: 41, standard_atomic_weight: "66.95095", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "394"))
        case .iron_67_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 41, standard_atomic_weight: "66.95095", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "64")) // TODO: fix
        case .iron_68:
            return ChemicalElementDetails(self, neutron_count: 42, standard_atomic_weight: "67.95370", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "187"))
        case .iron_69:
            return ChemicalElementDetails(self, neutron_count: 43, standard_atomic_weight: "68.95878", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "109"))
        case .iron_70:
            return ChemicalElementDetails(self, neutron_count: 44, standard_atomic_weight: "69.96146", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "94")) // TODO: fix
        case .iron_71:
            return ChemicalElementDetails(self, neutron_count: 45, standard_atomic_weight: "70.96672", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "30")) // TODO: fix
        case .iron_72:
            return ChemicalElementDetails(self, neutron_count: 46, standard_atomic_weight: "71.96962", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "10")) // TODO: fix
        }
    }
}
