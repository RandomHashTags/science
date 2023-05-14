//
//  ChromiumIsotope.swift
//  
//
//  Created by Evan Anderson on 5/14/23.
//

import Foundation

// https://en.wikipedia.org/wiki/Isotopes_of_chromium
public enum ChromiumIsotope : String, ChemicalElementIsotope {
    case chromium_42
    case chromium_43
    case chromium_44
    case chromium_45
    case chromium_45_isomer_1
    case chromium_46
    case chromium_47
    case chromium_48
    case chromium_49
    case chromium_50
    case chromium_51
    case chromium_52
    case chromium_53
    case chromium_54
    case chromium_55
    case chromium_56
    case chromium_57
    case chromium_58
    case chromium_59
    case chromium_59_isomer_1
    case chromium_60
    case chromium_61
    case chromium_62
    case chromium_63
    case chromium_64
    case chromium_65
    case chromium_66
    case chromium_67
    case chromium_68
    case chromium_69
    case chromium_70
    
    public var element : ChemicalElement {
        return ChemicalElement.chromium
    }
    
    public var load_details : ChemicalElementDetails {
        switch self {
        case .chromium_42:
            return ChemicalElementDetails(self, neutron_count: 18, standard_atomic_weight: "42.00643", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "14"))
        case .chromium_43:
            return ChemicalElementDetails(self, neutron_count: 19, standard_atomic_weight: "42.99771", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "21.6"))
        case .chromium_44:
            return ChemicalElementDetails(self, neutron_count: 20, standard_atomic_weight: "43.98555", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "54"))
        case .chromium_45:
            return ChemicalElementDetails(self, neutron_count: 21, standard_atomic_weight: "44.97964", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "50"))
        case .chromium_45_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 21, standard_atomic_weight: "44.97964", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "1"))
        case .chromium_46:
            return ChemicalElementDetails(self, neutron_count: 22, standard_atomic_weight: "45.968359", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "0.26"))
        case .chromium_47:
            return ChemicalElementDetails(self, neutron_count: 23, standard_atomic_weight: "46.962900", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "500"))
        case .chromium_48:
            return ChemicalElementDetails(self, neutron_count: 24, standard_atomic_weight: "47.954032", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.hour, value: "21.56"))
        case .chromium_49:
            return ChemicalElementDetails(self, neutron_count: 25, standard_atomic_weight: "48.9513357", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.minute, value: "42.3"))
        case .chromium_50:
            return ChemicalElementDetails(self, neutron_count: 26, standard_atomic_weight: "49.9460442")
        case .chromium_51:
            return ChemicalElementDetails(self, neutron_count: 27, standard_atomic_weight: "50.9447674", decay_mode: AtomicDecayType.electron_capture, half_life: TimeUnit(type: TimeUnitType.day, value: "27.7025"))
        case .chromium_52:
            return ChemicalElementDetails(self, neutron_count: 28, standard_atomic_weight: "51.9405075")
        case .chromium_53:
            return ChemicalElementDetails(self, neutron_count: 29, standard_atomic_weight: "52.9406494")
        case .chromium_54:
            return ChemicalElementDetails(self, neutron_count: 30, standard_atomic_weight: "53.9388804")
        case .chromium_55:
            return ChemicalElementDetails(self, neutron_count: 31, standard_atomic_weight: "54.9408397", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.minute, value: "3.497"))
        case .chromium_56:
            return ChemicalElementDetails(self, neutron_count: 32, standard_atomic_weight: "55.9406531", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.minute, value: "5.94"))
        case .chromium_57:
            return ChemicalElementDetails(self, neutron_count: 33, standard_atomic_weight: "56.943613", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.second, value: "21.1"))
        case .chromium_58:
            return ChemicalElementDetails(self, neutron_count: 34, standard_atomic_weight: "57.94435", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.second, value: "7.0"))
        case .chromium_59:
            return ChemicalElementDetails(self, neutron_count: 35, standard_atomic_weight: "58.94859", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "460"))
        case .chromium_59_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 35, standard_atomic_weight: "58.94859", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "96")) // TODO: fix
        case .chromium_60:
            return ChemicalElementDetails(self, neutron_count: 36, standard_atomic_weight: "59.95008", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "560"))
        case .chromium_61:
            return ChemicalElementDetails(self, neutron_count: 37, standard_atomic_weight: "60.95472", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "261"))
        case .chromium_62:
            return ChemicalElementDetails(self, neutron_count: 38, standard_atomic_weight: "61.95661", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "199"))
        case .chromium_63:
            return ChemicalElementDetails(self, neutron_count: 39, standard_atomic_weight: "62.96186", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "129"))
        case .chromium_64:
            return ChemicalElementDetails(self, neutron_count: 40, standard_atomic_weight: "63.96441", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "43"))
        case .chromium_65:
            return ChemicalElementDetails(self, neutron_count: 41, standard_atomic_weight: "64.97016", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "27"))
        case .chromium_66:
            return ChemicalElementDetails(self, neutron_count: 42, standard_atomic_weight: "65.97338", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "10"))
        case .chromium_67:
            return ChemicalElementDetails(self, neutron_count: 43, standard_atomic_weight: "66.97955", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "10"))
        case .chromium_68:
            return ChemicalElementDetails(self, neutron_count: 44, standard_atomic_weight: "67.98316", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "10"))
        case .chromium_69:
            return ChemicalElementDetails(self, neutron_count: 45, standard_atomic_weight: "68.98966", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "6"))
        case .chromium_70:
            return ChemicalElementDetails(self, neutron_count: 46, standard_atomic_weight: "69.99395", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "6"))
        }
    }
}
