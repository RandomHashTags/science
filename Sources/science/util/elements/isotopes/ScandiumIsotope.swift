//
//  ScandiumIsotope.swift
//  
//
//  Created by Evan Anderson on 5/13/23.
//

import Foundation

// https://en.wikipedia.org/wiki/Isotopes_of_scandium
public enum ScandiumIsotope : String, ChemicalElementIsotope {
    case scandium_39
    case scandium_40
    case scandium_41
    case scandium_42
    case scandium_42_isomer_1
    case scandium_43
    case scandium_43_isomer_1
    case scandium_43_isomer_2
    case scandium_44
    case scandium_44_isomer_1
    case scandium_44_isomer_2
    case scandium_44_isomer_3
    case scandium_45
    case scandium_45_isomer_1
    case scandium_46
    case scandium_46_isomer_1
    case scandium_46_isomer_2
    case scandium_47
    case scandium_47_isomer_1
    case scandium_48
    case scandium_49
    case scandium_50
    case scandium_50_isomer_1
    case scandium_51
    case scandium_52
    case scandium_53
    case scandium_54
    case scandium_54_isomer_1
    case scandium_55
    case scandium_56
    case scandium_57
    case scandium_58
    case scandium_59
    case scandium_60
    case scandium_61
    case scandium_62
    
    public var element : ChemicalElement {
        return ChemicalElement.scandium
    }
    
    public var load_details : ChemicalElementDetails {
        switch self {
        case .scandium_39:
            return ChemicalElementDetails(self, neutron_count: 18, standard_atomic_weight: "38.984790", decay_mode: AtomicDecayType.proton_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "299"))
        case .scandium_40:
            return ChemicalElementDetails(self, neutron_count: 19, standard_atomic_weight: "39.977967", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "182.3"))
        case .scandium_41:
            return ChemicalElementDetails(self, neutron_count: 20, standard_atomic_weight: "40.96925113", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "596.3"))
        case .scandium_42:
            return ChemicalElementDetails(self, neutron_count: 21, standard_atomic_weight: "41.96551643", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "681.3"))
        case .scandium_42_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 21, standard_atomic_weight: "41.96551643", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "61.7"))
        case .scandium_43:
            return ChemicalElementDetails(self, neutron_count: 22, standard_atomic_weight: "42.9611507", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.hour, value: "3.891"))
        case .scandium_43_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 22, standard_atomic_weight: "42.9611507", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "438")) // TODO: fix
        case .scandium_43_isomer_2:
            return ChemicalElementDetails(self, neutron_count: 22, standard_atomic_weight: "42.9611507", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "470")) // TODO: fix
        case .scandium_44:
            return ChemicalElementDetails(self, neutron_count: 23, standard_atomic_weight: "43.9594028", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.hour, value: "3.97"))
        case .scandium_44_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 23, standard_atomic_weight: "43.9594028", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "154.2")) // TODO: fix
        case .scandium_44_isomer_2:
            return ChemicalElementDetails(self, neutron_count: 23, standard_atomic_weight: "43.9594028", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(type: TimeUnitType.hour, value: "58.61"))
        case .scandium_44_isomer_3:
            return ChemicalElementDetails(self, neutron_count: 23, standard_atomic_weight: "43.9594028", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "50.4")) // TODO: fix
        case .scandium_45:
            return ChemicalElementDetails(self, neutron_count: 24, standard_atomic_weight: "44.9559119")
        case .scandium_45_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 24, standard_atomic_weight: "44.9559119", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "318"))
        case .scandium_46:
            return ChemicalElementDetails(self, neutron_count: 25, standard_atomic_weight: "45.9551719", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.day, value: "83.79"))
        case .scandium_46_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 25, standard_atomic_weight: "45.9551719", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "9.4")) // TODO: fix
        case .scandium_46_isomer_2:
            return ChemicalElementDetails(self, neutron_count: 25, standard_atomic_weight: "45.9551719", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(type: TimeUnitType.second, value: "18.75"))
        case .scandium_47:
            return ChemicalElementDetails(self, neutron_count: 26, standard_atomic_weight: "46.9524075", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.day, value: "3.3492"))
        case .scandium_47_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 26, standard_atomic_weight: "46.9524075", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "272")) // TODO: fix
        case .scandium_48:
            return ChemicalElementDetails(self, neutron_count: 27, standard_atomic_weight: "47.952231", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.hour, value: "43.67"))
        case .scandium_49:
            return ChemicalElementDetails(self, neutron_count: 28, standard_atomic_weight: "48.950024", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.minute, value: "57.2"))
        case .scandium_50:
            return ChemicalElementDetails(self, neutron_count: 29, standard_atomic_weight: "49.952188", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "102.5"))
        case .scandium_50_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 29, standard_atomic_weight: "49.952188", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "350"))
        case .scandium_51:
            return ChemicalElementDetails(self, neutron_count: 30, standard_atomic_weight: "50.953603", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "12.4"))
        case .scandium_52:
            return ChemicalElementDetails(self, neutron_count: 31, standard_atomic_weight: "51.95668", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "8.2"))
        case .scandium_53:
            return ChemicalElementDetails(self, neutron_count: 32, standard_atomic_weight: "52.95961", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "2.4"))
        case .scandium_54:
            return ChemicalElementDetails(self, neutron_count: 33, standard_atomic_weight: "53.96326", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "260"))
        case .scandium_54_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 33, standard_atomic_weight: "53.96326", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "7")) // TODO: fix
        case .scandium_55:
            return ChemicalElementDetails(self, neutron_count: 34, standard_atomic_weight: "54.96824", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "0.115"))
        case .scandium_56:
            return ChemicalElementDetails(self, neutron_count: 35, standard_atomic_weight: "55.97287", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "35"))
        case .scandium_57:
            return ChemicalElementDetails(self, neutron_count: 36, standard_atomic_weight: "56.97779", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "13"))
        case .scandium_58:
            return ChemicalElementDetails(self, neutron_count: 37, standard_atomic_weight: "57.98371", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "12"))
        case .scandium_59:
            return ChemicalElementDetails(self, neutron_count: 38, standard_atomic_weight: "58.98922", decay_mode: AtomicDecayType.beta_minus_neutron_emission, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "10"))
        case .scandium_60:
            return ChemicalElementDetails(self, neutron_count: 39, standard_atomic_weight: "59.99571", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "3"))
        case .scandium_61:
            return ChemicalElementDetails(self, neutron_count: 40, standard_atomic_weight: "61.001", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "2"))
        case .scandium_62:
            return ChemicalElementDetails(self, neutron_count: 41, standard_atomic_weight: "62.00785", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "2"))
        }
    }
}
