//
//  ManganeseIsotope.swift
//  
//
//  Created by Evan Anderson on 5/14/23.
//

import Foundation

// https://en.wikipedia.org/wiki/Isotopes_of_manganese
public enum ManganeseIsotope : String, ChemicalElementIsotope {
    case manganese_46
    case manganese_46_isomer_1
    case manganese_47
    case manganese_48
    case manganese_49
    case manganese_50
    case manganese_50_isomer_1
    case manganese_51
    case manganese_52
    case manganese_52_isomer_1
    case manganese_53
    case manganese_54
    case manganese_55
    case manganese_56
    case manganese_57
    case manganese_58
    case manganese_58_isomer_1
    case manganese_59
    case manganese_60
    case manganese_60_isomer_1
    case manganese_61
    case manganese_62
    case manganese_62_isomer_1
    case manganese_63
    case manganese_64
    case manganese_64_isomer_1
    case manganese_65
    case manganese_66
    case manganese_67
    case manganese_68
    case manganese_69
    case manganese_70
    case manganese_71
    case manganese_72
    case manganese_73
    
    public var element : ChemicalElement {
        return ChemicalElement.manganese
    }
    
    public var load_details : ChemicalElementDetails {
        switch self {
        case .manganese_46:
            return ChemicalElementDetails(self, neutron_count: 21, standard_atomic_weight: "45.98672", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "37"))
        case .manganese_46_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 21, standard_atomic_weight: "45.98672", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "1"))
        case .manganese_47:
            return ChemicalElementDetails(self, neutron_count: 22, standard_atomic_weight: "46.97610", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "100"))
        case .manganese_48:
            return ChemicalElementDetails(self, neutron_count: 23, standard_atomic_weight: "47.96852", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "158.1"))
        case .manganese_49:
            return ChemicalElementDetails(self, neutron_count: 24, standard_atomic_weight: "48.959618", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "382"))
        case .manganese_50:
            return ChemicalElementDetails(self, neutron_count: 25, standard_atomic_weight: "49.9542382", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "283.29"))
        case .manganese_50_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 25, standard_atomic_weight: "49.9542382", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.minute, value: "1.75"))
        case .manganese_51:
            return ChemicalElementDetails(self, neutron_count: 26, standard_atomic_weight: "50.9482108", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.minute, value: "46.2"))
        case .manganese_52:
            return ChemicalElementDetails(self, neutron_count: 27, standard_atomic_weight: "51.9455655", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.day, value: "5.591"))
        case .manganese_52_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 27, standard_atomic_weight: "51.9455655", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.minute, value: "21.1"))
        case .manganese_53:
            return ChemicalElementDetails(self, neutron_count: 28, standard_atomic_weight: "52.9412901", decay_mode: AtomicDecayType.electron_capture(amount: 1), half_life: TimeUnit(type: TimeUnitType.year, value: "3700000"))
        case .manganese_54:
            return ChemicalElementDetails(self, neutron_count: 29, standard_atomic_weight: "53.9403589", decay_mode: AtomicDecayType.electron_capture(amount: 1), half_life: TimeUnit(type: TimeUnitType.day, value: "312.03"))
        case .manganese_55:
            return ChemicalElementDetails(self, neutron_count: 30, standard_atomic_weight: "54.9380451")
        case .manganese_56:
            return ChemicalElementDetails(self, neutron_count: 31, standard_atomic_weight: "55.9389049", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.hour, value: "2.5789"))
        case .manganese_57:
            return ChemicalElementDetails(self, neutron_count: 32, standard_atomic_weight: "56.9382854", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "85.4"))
        case .manganese_58:
            return ChemicalElementDetails(self, neutron_count: 33, standard_atomic_weight: "57.93998", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "3.0"))
        case .manganese_58_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 33, standard_atomic_weight: "57.93998", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "65.2"))
        case .manganese_59:
            return ChemicalElementDetails(self, neutron_count: 34, standard_atomic_weight: "58.94044", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "4.59"))
        case .manganese_60:
            return ChemicalElementDetails(self, neutron_count: 35, standard_atomic_weight: "59.94291", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "51"))
        case .manganese_60_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 35, standard_atomic_weight: "59.94291", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "1.77"))
        case .manganese_61:
            return ChemicalElementDetails(self, neutron_count: 36, standard_atomic_weight: "60.94465", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "0.67"))
        case .manganese_62:
            return ChemicalElementDetails(self, neutron_count: 37, standard_atomic_weight: "61.94843", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "671"))
        case .manganese_62_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 37, standard_atomic_weight: "61.94843", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "92")) // TODO: fix
        case .manganese_63:
            return ChemicalElementDetails(self, neutron_count: 38, standard_atomic_weight: "62.95024", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "275"))
        case .manganese_64:
            return ChemicalElementDetails(self, neutron_count: 39, standard_atomic_weight: "63.95425", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "88.8"))
        case .manganese_64_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 39, standard_atomic_weight: "63.95425", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "101")) // TODO: fix
        case .manganese_65:
            return ChemicalElementDetails(self, neutron_count: 40, standard_atomic_weight: "64.95634", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "92"))
        case .manganese_66:
            return ChemicalElementDetails(self, neutron_count: 41, standard_atomic_weight: "65.96108", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "64.4"))
        case .manganese_67:
            return ChemicalElementDetails(self, neutron_count: 42, standard_atomic_weight: "66.96414", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "45"))
        case .manganese_68:
            return ChemicalElementDetails(self, neutron_count: 43, standard_atomic_weight: "67.96930", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "28")) // TODO: fix
        case .manganese_69:
            return ChemicalElementDetails(self, neutron_count: 44, standard_atomic_weight: "68.97284", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "14")) // TODO: fix
        case .manganese_70:
            return ChemicalElementDetails(self, neutron_count: 45, standard_atomic_weight: "69.978050", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "19.9")) // TODO: fix
        case .manganese_71:
            return ChemicalElementDetails(self, neutron_count: 46, standard_atomic_weight: "70.982160", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "16"))
        case .manganese_72:
            return ChemicalElementDetails(self, neutron_count: 47, standard_atomic_weight: "71.988010", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "12"))
        case .manganese_73:
            return ChemicalElementDetails(self, neutron_count: 48, standard_atomic_weight: "72.992810", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "12"))
        }
    }
}
