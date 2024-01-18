//
//  MagnesiumIsotope.swift
//  
//
//  Created by Evan Anderson on 5/10/23.
//

import Foundation
import SwiftUnits

// https://en.wikipedia.org/wiki/Isotopes_of_magnesium
public enum MagnesiumIsotope : String, ChemicalElementIsotope {
    case magnesium_18
    case magnesium_19
    case magnesium_20
    case magnesium_21
    case magnesium_22
    case magnesium_23
    case magnesium_24
    case magnesium_25
    case magnesium_26
    case magnesium_27
    case magnesium_28
    case magnesium_29
    case magnesium_30
    case magnesium_31
    case magnesium_32
    case magnesium_33
    case magnesium_34
    case magnesium_35
    case magnesium_36
    case magnesium_37
    case magnesium_38
    case magnesium_40
    
    public var element : ChemicalElement {
        return ChemicalElement.magnesium
    }
    
    public var load_details : ChemicalElementDetails {
        switch self {
        case .magnesium_18:
            return ChemicalElementDetails(self, neutrons: 6, standard_atomic_weight: "0", decay_mode: AtomicDecayType.proton_emission(amount: 2), half_life: nil) // TODO: fix
        case .magnesium_19:
            return ChemicalElementDetails(self, neutrons: 7, standard_atomic_weight: "19.034180", decay_mode: AtomicDecayType.proton_emission(amount: 2), half_life: TimeUnit(prefix: UnitPrefix.pico, type: TimeUnitType.second, value: "5"))
        case .magnesium_20:
            return ChemicalElementDetails(self, neutrons: 8, standard_atomic_weight: "20.0187631", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "90.4"))
        case .magnesium_21:
            return ChemicalElementDetails(self, neutrons: 9, standard_atomic_weight: "21.0117058", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "120.0"))
        case .magnesium_22:
            return ChemicalElementDetails(self, neutrons: 10, standard_atomic_weight: "21.99957060", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "3.8745"))
        case .magnesium_23:
            return ChemicalElementDetails(self, neutrons: 11, standard_atomic_weight: "22.99412377", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "11.3039"))
        case .magnesium_24:
            return ChemicalElementDetails(self, neutrons: 12, standard_atomic_weight: "23.985041689")
        case .magnesium_25:
            return ChemicalElementDetails(self, neutrons: 13, standard_atomic_weight: "24.98583697")
        case .magnesium_26:
            return ChemicalElementDetails(self, neutrons: 14, standard_atomic_weight: "25.98259297")
        case .magnesium_27:
            return ChemicalElementDetails(self, neutrons: 15, standard_atomic_weight: "26.98434065", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.minute, value: "9.435"))
        case .magnesium_28:
            return ChemicalElementDetails(self, neutrons: 16, standard_atomic_weight: "27.98387543", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.hour, value: "20.915"))
        case .magnesium_29:
            return ChemicalElementDetails(self, neutrons: 17, standard_atomic_weight: "28.9886072", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "1.30"))
        case .magnesium_30:
            return ChemicalElementDetails(self, neutrons: 18, standard_atomic_weight: "29.9904655", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "317"))
        case .magnesium_31:
            return ChemicalElementDetails(self, neutrons: 19, standard_atomic_weight: "30.996648", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "270"))
        case .magnesium_32:
            return ChemicalElementDetails(self, neutrons: 20, standard_atomic_weight: "31.999110", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "80.4"))
        case .magnesium_33:
            return ChemicalElementDetails(self, neutrons: 21, standard_atomic_weight: "33.0053279", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "92.0"))
        case .magnesium_34:
            return ChemicalElementDetails(self, neutrons: 22, standard_atomic_weight: "34.008935", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "44.9"))
        case .magnesium_35:
            return ChemicalElementDetails(self, neutrons: 23, standard_atomic_weight: "35.01679", decay_mode: AtomicDecayType.beta_minus_neutron_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "11.3"))
        case .magnesium_36:
            return ChemicalElementDetails(self, neutrons: 24, standard_atomic_weight: "36.02188", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "3.9"))
        case .magnesium_37:
            return ChemicalElementDetails(self, neutrons: 25, standard_atomic_weight: "37.03029", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "8"))
        case .magnesium_38:
            return ChemicalElementDetails(self, neutrons: 26, standard_atomic_weight: "38.03658", decay_mode: AtomicDecayType.beta_minus_neutron_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "3.1"))
        case .magnesium_40:
            return ChemicalElementDetails(self, neutrons: 27, standard_atomic_weight: "40.05319", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "171"))
        }
    }
}
