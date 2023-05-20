//
//  LithiumIsotope.swift
//  
//
//  Created by Evan Anderson on 5/1/23.
//

import Foundation

// https://en.wikipedia.org/wiki/Isotopes_of_lithium
public enum LithiumIsotope : String, ChemicalElementIsotope {
    case lithium_3
    case lithium_4
    case lithium_5
    case lithium_6
    case lithium_6_isomer_1
    case lithium_7
    case lithium_8
    case lithium_9
    case lithium_10
    case lithium_10_isomer_1
    case lithium_10_isomer_2
    case lithium_11
    case lithium_12
    case lithium_13
    
    public var element : ChemicalElement {
        return ChemicalElement.lithium
    }
    
    public var load_details : ChemicalElementDetails {
        switch self {
        case .lithium_3:
            return ChemicalElementDetails(self, neutron_count: 0, standard_atomic_weight: "3.03078", decay_mode: AtomicDecayType.proton_emission(amount: 1), half_life: nil) // TODO: fix
        case .lithium_4:
            return ChemicalElementDetails(self, neutron_count: 1, standard_atomic_weight: "4.02719", decay_mode: AtomicDecayType.proton_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.yocto, type: TimeUnitType.second, value: "91"))
        case .lithium_5:
            return ChemicalElementDetails(self, neutron_count: 2, standard_atomic_weight: "5.012540", decay_mode: AtomicDecayType.proton_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.yocto, type: TimeUnitType.second, value: "370"))
        case .lithium_6:
            return ChemicalElementDetails(self, neutron_count: 3, standard_atomic_weight: "6.0151228874")
        case .lithium_6_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 3, standard_atomic_weight: "6.0151228874", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(prefix: UnitPrefix.atto, type: TimeUnitType.second, value: "56"))
        case .lithium_7:
            return ChemicalElementDetails(self, neutron_count: 4, standard_atomic_weight: "7.016003434")
        case .lithium_8:
            return ChemicalElementDetails(self, neutron_count: 5, standard_atomic_weight: "8.02248624", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "838.7"))
        case .lithium_9:
            return ChemicalElementDetails(self, neutron_count: 6, standard_atomic_weight: "9.02679019", decay_mode: AtomicDecayType.beta_minus_neutron_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "178.2"))
        case .lithium_10:
            return ChemicalElementDetails(self, neutron_count: 7, standard_atomic_weight: "10.035483", decay_mode: AtomicDecayType.neutron_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.zepto, type: TimeUnitType.second, value: "2.0"))
        case .lithium_10_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 7, standard_atomic_weight: "10.035483", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(prefix: UnitPrefix.zepto, type: TimeUnitType.second, value: "3.7"))
        case .lithium_10_isomer_2:
            return ChemicalElementDetails(self, neutron_count: 7, standard_atomic_weight: "10.035483", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(prefix: UnitPrefix.zepto, type: TimeUnitType.second, value: "1.35"))
        case .lithium_11:
            return ChemicalElementDetails(self, neutron_count: 8, standard_atomic_weight: "11.0437236", decay_mode: AtomicDecayType.beta_minus_neutron_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "8.75"))
        case .lithium_12:
            return ChemicalElementDetails(self, neutron_count: 9, standard_atomic_weight: "12.052610", decay_mode: AtomicDecayType.neutron_emission(amount: 1), half_life: nil) // TODO: fix
        case .lithium_13:
            return ChemicalElementDetails(self, neutron_count: 10, standard_atomic_weight: "13.061170", decay_mode: AtomicDecayType.neutron_emission(amount: 2), half_life: TimeUnit(prefix: UnitPrefix.zepto, type: TimeUnitType.second, value: "3.3"))
        }
    }
}
