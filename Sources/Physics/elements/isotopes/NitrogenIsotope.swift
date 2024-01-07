//
//  NitrogenIsotope.swift
//  
//
//  Created by Evan Anderson on 5/7/23.
//

import Foundation
import SwiftUnits

// https://en.wikipedia.org/wiki/Isotopes_of_nitrogen
public enum NitrogenIsotope : String, ChemicalElementIsotope {
    case nitrogen_10
    case nitrogen_11
    case nitrogen_11_isomer_1
    case nitrogen_12
    case nitrogen_13
    case nitrogen_14
    case nitrogen_14_isomer_1
    case nitrogen_15
    case nitrogen_16
    case nitrogen_16_isomer_1
    case nitrogen_17
    case nitrogen_18
    case nitrogen_19
    case nitrogen_20
    case nitrogen_21
    case nitrogen_22
    case nitrogen_23
    case nitrogen_24
    case nitrogen_25
    
    public var element : ChemicalElement {
        return ChemicalElement.nitrogen
    }
    
    public var load_details: ChemicalElementDetails {
        switch self {
        case .nitrogen_10:
            return ChemicalElementDetails(self, neutron_count: 3, standard_atomic_weight: "10.04164", decay_mode: AtomicDecayType.proton_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.yocto, type: TimeUnitType.second, value: "143"))
        case .nitrogen_11:
            return ChemicalElementDetails(self, neutron_count: 4, standard_atomic_weight: "11.026158", decay_mode: AtomicDecayType.proton_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.yocto, type: TimeUnitType.second, value: "585"))
        case .nitrogen_11_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 4, standard_atomic_weight: "11.026158", decay_mode: AtomicDecayType.proton_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.yocto, type: TimeUnitType.second, value: "690"))
        case .nitrogen_12:
            return ChemicalElementDetails(self, neutron_count: 5, standard_atomic_weight: "12.0186132", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.yocto, type: TimeUnitType.second, value: "690"))
        case .nitrogen_13:
            return ChemicalElementDetails(self, neutron_count: 6, standard_atomic_weight: "13.00573861", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.minute, value: "9.965"))
        case .nitrogen_14:
            return ChemicalElementDetails(self, neutron_count: 7, standard_atomic_weight: "14.003074004251")
        case .nitrogen_14_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 7, standard_atomic_weight: "14.003074004251", decay_mode: AtomicDecayType.isomeric_transition, half_life: nil) // TODO: fix
        case .nitrogen_15:
            return ChemicalElementDetails(self, neutron_count: 8, standard_atomic_weight: "15.000108898266")
        case .nitrogen_16:
            return ChemicalElementDetails(self, neutron_count: 9, standard_atomic_weight: "16.0061019", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "7.13"))
        case .nitrogen_16_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 9, standard_atomic_weight: "16.0061019", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "5.25"))
        case .nitrogen_17:
            return ChemicalElementDetails(self, neutron_count: 10, standard_atomic_weight: "17.008449", decay_mode: AtomicDecayType.beta_minus_neutron_emission(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "4.173"))
        case .nitrogen_18:
            return ChemicalElementDetails(self, neutron_count: 11, standard_atomic_weight: "18.014078", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "619.2"))
        case .nitrogen_19:
            return ChemicalElementDetails(self, neutron_count: 12, standard_atomic_weight: "19.017022", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "336"))
        case .nitrogen_20:
            return ChemicalElementDetails(self, neutron_count: 13, standard_atomic_weight: "20.023370", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "136"))
        case .nitrogen_21:
            return ChemicalElementDetails(self, neutron_count: 14, standard_atomic_weight: "21.02709", decay_mode: AtomicDecayType.beta_minus_neutron_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "85"))
        case .nitrogen_22:
            return ChemicalElementDetails(self, neutron_count: 15, standard_atomic_weight: "22.03410", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "23"))
        case .nitrogen_23:
            return ChemicalElementDetails(self, neutron_count: 16, standard_atomic_weight: "23.03942", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "13.9"))
        case .nitrogen_24:
            return ChemicalElementDetails(self, neutron_count: 17, standard_atomic_weight: "24.05039", decay_mode: AtomicDecayType.neutron_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "51.9"))
        case .nitrogen_25:
            return ChemicalElementDetails(self, neutron_count: 18, standard_atomic_weight: "25.06010", decay_mode: AtomicDecayType.neutron_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "259.9"))
        }
    }
}
