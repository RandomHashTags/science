//
//  AluminiumIsotope.swift
//  
//
//  Created by Evan Anderson on 5/10/23.
//

import Foundation
import SwiftUnits

// https://en.wikipedia.org/wiki/Isotopes_of_aluminium
public enum AluminiumIsotope : String, ChemicalElementIsotope {
    case aluminium_22
    case aluminium_23
    case aluminium_24
    case aluminium_24_isomer_1
    case aluminium_25
    case aluminium_26
    case aluminium_26_isomer_1
    case aluminium_27
    case aluminium_28
    case aluminium_29
    case aluminium_30
    case aluminium_31
    case aluminium_32
    case aluminium_32_isomer_1
    case aluminium_33
    case aluminium_34
    case aluminium_34_isomer_1
    case aluminium_35
    case aluminium_36
    case aluminium_37
    case aluminium_38
    case aluminium_39
    case aluminium_40
    case aluminium_41
    case aluminium_42
    case aluminium_43
    
    public var element : ChemicalElement {
        return ChemicalElement.aluminium
    }
    
    public var load_details : ChemicalElementDetails {
        switch self {
        case .aluminium_22:
            return ChemicalElementDetails(self, neutron_count: 9, standard_atomic_weight: "22.01954", decay_mode: AtomicDecayType.beta_plus_proton_emission, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "91.1"))
        case .aluminium_23:
            return ChemicalElementDetails(self, neutron_count: 10, standard_atomic_weight: "23.0072444", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "470"))
        case .aluminium_24:
            return ChemicalElementDetails(self, neutron_count: 11, standard_atomic_weight: "23.99994754", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "2.053"))
        case .aluminium_24_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 11, standard_atomic_weight: "23.99994754", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "130"))
        case .aluminium_25:
            return ChemicalElementDetails(self, neutron_count: 12, standard_atomic_weight: "24.99042831", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "7.183"))
        case .aluminium_26:
            return ChemicalElementDetails(self, neutron_count: 13, standard_atomic_weight: "25.98689186", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.year, value: "717000"))
        case .aluminium_26_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 13, standard_atomic_weight: "25.98689186", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "6.3460"))
        case .aluminium_27:
            return ChemicalElementDetails(self, neutron_count: 14, standard_atomic_weight: "26.98153841")
        case .aluminium_28:
            return ChemicalElementDetails(self, neutron_count: 15, standard_atomic_weight: "27.98191009", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.minute, value: "2.245"))
        case .aluminium_29:
            return ChemicalElementDetails(self, neutron_count: 16, standard_atomic_weight: "28.9804532", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.minute, value: "6.56"))
        case .aluminium_30:
            return ChemicalElementDetails(self, neutron_count: 17, standard_atomic_weight: "29.982968", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "3.62"))
        case .aluminium_31:
            return ChemicalElementDetails(self, neutron_count: 18, standard_atomic_weight: "30.9839498", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "644"))
        case .aluminium_32:
            return ChemicalElementDetails(self, neutron_count: 19, standard_atomic_weight: "31.988084", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "33.0"))
        case .aluminium_32_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 19, standard_atomic_weight: "31.988084", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "200"))
        case .aluminium_33:
            return ChemicalElementDetails(self, neutron_count: 20, standard_atomic_weight: "32.990878", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "41.7"))
        case .aluminium_34:
            return ChemicalElementDetails(self, neutron_count: 21, standard_atomic_weight: "33.996779", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "56.3"))
        case .aluminium_34_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 21, standard_atomic_weight: "33.996779", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "26"))
        case .aluminium_35:
            return ChemicalElementDetails(self, neutron_count: 22, standard_atomic_weight: "34.999760", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "37.2"))
        case .aluminium_36:
            return ChemicalElementDetails(self, neutron_count: 23, standard_atomic_weight: "36.00639", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "90"))
        case .aluminium_37:
            return ChemicalElementDetails(self, neutron_count: 24, standard_atomic_weight: "37.01053", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "11.5"))
        case .aluminium_38:
            return ChemicalElementDetails(self, neutron_count: 25, standard_atomic_weight: "38.0174", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "9.0"))
        case .aluminium_39:
            return ChemicalElementDetails(self, neutron_count: 26, standard_atomic_weight: "39.02217", decay_mode: AtomicDecayType.beta_minus_neutron_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "7.6"))
        case .aluminium_40:
            return ChemicalElementDetails(self, neutron_count: 27, standard_atomic_weight: "40.02962", decay_mode: AtomicDecayType.beta_minus_neutron_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "5.7"))
        case .aluminium_41:
            return ChemicalElementDetails(self, neutron_count: 28, standard_atomic_weight: "41.03588", decay_mode: AtomicDecayType.beta_minus_neutron_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "3.5"))
        case .aluminium_42:
            return ChemicalElementDetails(self, neutron_count: 29, standard_atomic_weight: "42.04305", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "171"))
        case .aluminium_43:
            return ChemicalElementDetails(self, neutron_count: 30, standard_atomic_weight: "43.05048", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "171"))
        }
    }
}
