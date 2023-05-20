//
//  CalciumIsotope.swift
//  
//
//  Created by Evan Anderson on 5/13/23.
//

import Foundation

// https://en.wikipedia.org/wiki/Isotopes_of_calcium
public enum CalciumIsotope : String, ChemicalElementIsotope {
    case calcium_35
    case calcium_36
    case calcium_37
    case calcium_38
    case calcium_39
    case calcium_40
    case calcium_41
    case calcium_42
    case calcium_43
    case calcium_44
    case calcium_45
    case calcium_46
    case calcium_47
    case calcium_48
    case calcium_49
    case calcium_50
    case calcium_51
    case calcium_52
    case calcium_53
    case calcium_54
    case calcium_55
    case calcium_56
    case calcium_57
    case calcium_58
    case calcium_59
    case calcium_60
    
    public var element : ChemicalElement {
        return ChemicalElement.calcium
    }
    
    public var load_details : ChemicalElementDetails {
        switch self {
        case .calcium_35:
            return ChemicalElementDetails(self, neutron_count: 15, standard_atomic_weight: "35.00514", decay_mode: AtomicDecayType.beta_plus_proton_emission, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "25.7"))
        case .calcium_36:
            return ChemicalElementDetails(self, neutron_count: 16, standard_atomic_weight: "35.99307", decay_mode: AtomicDecayType.beta_plus_proton_emission, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "101.2"))
        case .calcium_37:
            return ChemicalElementDetails(self, neutron_count: 17, standard_atomic_weight: "36.9858979", decay_mode: AtomicDecayType.beta_plus_proton_emission, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "181.1"))
        case .calcium_38:
            return ChemicalElementDetails(self, neutron_count: 18, standard_atomic_weight: "37.97631923", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "443.70"))
        case .calcium_39:
            return ChemicalElementDetails(self, neutron_count: 19, standard_atomic_weight: "38.9707108", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "860.3"))
        case .calcium_40:
            return ChemicalElementDetails(self, neutron_count: 20, standard_atomic_weight: "39.962590866")
        case .calcium_41:
            return ChemicalElementDetails(self, neutron_count: 21, standard_atomic_weight: "40.96227792", decay_mode: AtomicDecayType.electron_capture(amount: 1), half_life: TimeUnit(type: TimeUnitType.year, value: "99400"))
        case .calcium_42:
            return ChemicalElementDetails(self, neutron_count: 22, standard_atomic_weight: "41.95861783")
        case .calcium_43:
            return ChemicalElementDetails(self, neutron_count: 23, standard_atomic_weight: "42.95876643")
        case .calcium_44:
            return ChemicalElementDetails(self, neutron_count: 24, standard_atomic_weight: "43.9554815")
        case .calcium_45:
            return ChemicalElementDetails(self, neutron_count: 25, standard_atomic_weight: "44.9561863", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.day, value: "162.61"))
        case .calcium_46:
            return ChemicalElementDetails(self, neutron_count: 26, standard_atomic_weight: "45.9536880")
        case .calcium_47:
            return ChemicalElementDetails(self, neutron_count: 27, standard_atomic_weight: "46.9545414", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.day, value: "4.536"))
        case .calcium_48:
            return ChemicalElementDetails(self, neutron_count: 28, standard_atomic_weight: "47.95252290", decay_mode: AtomicDecayType.beta_minus(amount: 2), half_life: TimeUnit(type: TimeUnitType.year, value: "64000000000000000000"))
        case .calcium_49:
            return ChemicalElementDetails(self, neutron_count: 29, standard_atomic_weight: "48.95562288", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.minute, value: "8.718"))
        case .calcium_50:
            return ChemicalElementDetails(self, neutron_count: 30, standard_atomic_weight: "49.9574992", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "13.9"))
        case .calcium_51:
            return ChemicalElementDetails(self, neutron_count: 31, standard_atomic_weight: "50.9609957", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "10.0"))
        case .calcium_52:
            return ChemicalElementDetails(self, neutron_count: 32, standard_atomic_weight: "51.9632136", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "4.6"))
        case .calcium_53:
            return ChemicalElementDetails(self, neutron_count: 33, standard_atomic_weight: "52.96845", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "461"))
        case .calcium_54:
            return ChemicalElementDetails(self, neutron_count: 34, standard_atomic_weight: "53.97299", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "90"))
        case .calcium_55:
            return ChemicalElementDetails(self, neutron_count: 35, standard_atomic_weight: "54.98030", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "22"))
        case .calcium_56:
            return ChemicalElementDetails(self, neutron_count: 36, standard_atomic_weight: "55.98508", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "11"))
        case .calcium_57:
            return ChemicalElementDetails(self, neutron_count: 37, standard_atomic_weight: "56.99262", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "5"))
        case .calcium_58:
            return ChemicalElementDetails(self, neutron_count: 38, standard_atomic_weight: "57.99794", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "3"))
        case .calcium_59:
            return ChemicalElementDetails(self, neutron_count: 39, standard_atomic_weight: "0", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: nil) // TODO: fix
        case .calcium_60:
            return ChemicalElementDetails(self, neutron_count: 40, standard_atomic_weight: "0", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: nil) // TODO: fix
        }
    }
}
