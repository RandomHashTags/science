//
//  PhosphorusIsotope.swift
//  
//
//  Created by Evan Anderson on 5/11/23.
//

import Foundation

public enum PhosphorusIsotope : String, ChemicalElementIsotope {
    case phosphorus_26
    case phosphorus_27
    case phosphorus_28
    case phosphorus_29
    case phosphorus_30
    case phosphorus_31
    case phosphorus_32
    case phosphorus_33
    case phosphorus_34
    case phosphorus_35
    case phosphorus_36
    case phosphorus_37
    case phosphorus_38
    case phosphorus_39
    case phosphorus_40
    case phosphorus_41
    case phosphorus_42
    case phosphorus_43
    case phosphorus_44
    case phosphorus_45
    case phosphorus_46
    case phosphorus_47
    
    public var element : ChemicalElement {
        return ChemicalElement.phosphorus
    }
    
    public var load_details : ChemicalElementDetails {
        switch self {
        case .phosphorus_26:
            return ChemicalElementDetails(self, neutron_count: 11, standard_atomic_weight: "26.01178", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "43.7"))
        case .phosphorus_27:
            return ChemicalElementDetails(self, neutron_count: 12, standard_atomic_weight: "26.999224", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "260"))
        case .phosphorus_28:
            return ChemicalElementDetails(self, neutron_count: 13, standard_atomic_weight: "27.9923266", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "270.3"))
        case .phosphorus_29:
            return ChemicalElementDetails(self, neutron_count: 14, standard_atomic_weight: "28.9818004", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "4.142"))
        case .phosphorus_30:
            return ChemicalElementDetails(self, neutron_count: 15, standard_atomic_weight: "29.97831349", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.minute, value: "2.498"))
        case .phosphorus_31:
            return ChemicalElementDetails(self, neutron_count: 16, standard_atomic_weight: "29.97831349")
        case .phosphorus_32:
            return ChemicalElementDetails(self, neutron_count: 17, standard_atomic_weight: "31.97390764", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.day, value: "14.268"))
        case .phosphorus_33:
            return ChemicalElementDetails(self, neutron_count: 18, standard_atomic_weight: "32.9717257", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.day, value: "25.35"))
        case .phosphorus_34:
            return ChemicalElementDetails(self, neutron_count: 19, standard_atomic_weight: "33.9736459", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.second, value: "12.43"))
        case .phosphorus_35:
            return ChemicalElementDetails(self, neutron_count: 20, standard_atomic_weight: "34.9733141", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.second, value: "47.3"))
        case .phosphorus_36:
            return ChemicalElementDetails(self, neutron_count: 21, standard_atomic_weight: "35.978260", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.second, value: "5.6"))
        case .phosphorus_37:
            return ChemicalElementDetails(self, neutron_count: 22, standard_atomic_weight: "36.97961", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.second, value: "2.31"))
        case .phosphorus_38:
            return ChemicalElementDetails(self, neutron_count: 23, standard_atomic_weight: "37.98430", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.second, value: "0.64"))
        case .phosphorus_39:
            return ChemicalElementDetails(self, neutron_count: 24, standard_atomic_weight: "38.98629", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "282"))
        case .phosphorus_40:
            return ChemicalElementDetails(self, neutron_count: 25, standard_atomic_weight: "39.99129", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "150"))
        case .phosphorus_41:
            return ChemicalElementDetails(self, neutron_count: 26, standard_atomic_weight: "40.99465", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "101"))
        case .phosphorus_42:
            return ChemicalElementDetails(self, neutron_count: 27, standard_atomic_weight: "42.00108", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "48.5"))
        case .phosphorus_43:
            return ChemicalElementDetails(self, neutron_count: 28, standard_atomic_weight: "43.00502", decay_mode: AtomicDecayType.beta_minus_neutron_emission, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "35.8"))
        case .phosphorus_44:
            return ChemicalElementDetails(self, neutron_count: 29, standard_atomic_weight: "44.01122", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "18.5"))
        case .phosphorus_45:
            return ChemicalElementDetails(self, neutron_count: 30, standard_atomic_weight: "45.01675", decay_mode: AtomicDecayType.beta_minus_neutron_emission, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "24"))
        case .phosphorus_46:
            return ChemicalElementDetails(self, neutron_count: 31, standard_atomic_weight: "46.02466", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "201"))
        case .phosphorus_47:
            return ChemicalElementDetails(self, neutron_count: 32, standard_atomic_weight: "47.03190", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "2"))
        }
    }
}
