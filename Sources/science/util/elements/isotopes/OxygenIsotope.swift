//
//  OxygenIsotope.swift
//  
//
//  Created by Evan Anderson on 4/30/23.
//

import Foundation
import SwiftUnits

// https://en.wikipedia.org/wiki/Isotopes_of_oxygen
public enum OxygenIsotope : String, ChemicalElementIsotope {
    case oxygen_11
    case oxygen_12
    case oxygen_13
    case oxygen_14
    case oxygen_15
    case oxygen_16
    case oxygen_17
    case oxygen_18
    case oxygen_19
    case oxygen_20
    case oxygen_21
    case oxygen_22
    case oxygen_23
    case oxygen_24
    case oxygen_25
    case oxygen_26
    
    public var element : ChemicalElement {
        return ChemicalElement.oxygen
    }
    public var load_details : ChemicalElementDetails {
        switch self {
        case .oxygen_11:
            return ChemicalElementDetails(self, neutron_count: 3, standard_atomic_weight: "11.05125", decay_mode: AtomicDecayType.proton_emission(amount: 2), half_life: TimeUnit(prefix: UnitPrefix.yocto, type: TimeUnitType.second, value: "198"))
        case .oxygen_12:
            return ChemicalElementDetails(self, neutron_count: 4, standard_atomic_weight: "12.034368", decay_mode: AtomicDecayType.proton_emission(amount: 2), half_life: TimeUnit(prefix: UnitPrefix.zepto, type: TimeUnitType.second, value: "8.9"))
        case .oxygen_13:
            return ChemicalElementDetails(self, neutron_count: 5, standard_atomic_weight: "13.024815", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "8.58"))
        case .oxygen_14:
            return ChemicalElementDetails(self, neutron_count: 6, standard_atomic_weight: "13.008596706", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "70.621"))
        case .oxygen_15:
            return ChemicalElementDetails(self, neutron_count: 7, standard_atomic_weight: "15.0030656", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "122.266"))
        case .oxygen_16:
            return ChemicalElementDetails(self, neutron_count: 8, standard_atomic_weight: "15.994914619257")
        case .oxygen_17:
            return ChemicalElementDetails(self, neutron_count: 9, standard_atomic_weight: "16.999131755953")
        case .oxygen_18:
            return ChemicalElementDetails(self, neutron_count: 10, standard_atomic_weight: "17.999159612136")
        case .oxygen_19:
            return ChemicalElementDetails(self, neutron_count: 11, standard_atomic_weight: "19.0035780", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "26.470"))
        case .oxygen_20:
            return ChemicalElementDetails(self, neutron_count: 12, standard_atomic_weight: "20.0040754", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "12.51"))
        case .oxygen_21:
            return ChemicalElementDetails(self, neutron_count: 13, standard_atomic_weight: "21.008655", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "3.42"))
        case .oxygen_22:
            return ChemicalElementDetails(self, neutron_count: 14, standard_atomic_weight: "22.00997", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "2.25"))
        case .oxygen_23:
            return ChemicalElementDetails(self, neutron_count: 15, standard_atomic_weight: "23.01570", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "97"))
        case .oxygen_24:
            return ChemicalElementDetails(self, neutron_count: 16, standard_atomic_weight: "24.01986", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "77.4"))
        case .oxygen_25:
            return ChemicalElementDetails(self, neutron_count: 17, standard_atomic_weight: "25.02932", decay_mode: AtomicDecayType.neutron_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.zepto, type: TimeUnitType.second, value: "5.18"))
        case .oxygen_26:
            return ChemicalElementDetails(self, neutron_count: 18, standard_atomic_weight: "26.03721", decay_mode: AtomicDecayType.neutron_emission(amount: 2), half_life: TimeUnit(prefix: UnitPrefix.pico, type: TimeUnitType.second, value: "4.2"))
        }
    }
}
