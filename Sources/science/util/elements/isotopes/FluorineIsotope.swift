//
//  FluorineIsotope.swift
//  
//
//  Created by Evan Anderson on 5/7/23.
//

import Foundation

// https://en.wikipedia.org/wiki/Isotopes_of_fluorine
public enum FluorineIsotope : String, ChemicalElementIsotope {
    case fluorine_13
    case fluorine_14
    case fluorine_15
    case fluorine_16
    case fluorine_17
    case fluorine_18
    case fluorine_18_isomer_1
    case fluorine_19
    case fluorine_20
    case fluorine_21
    case fluorine_22
    case fluorine_23
    case fluorine_24
    case fluorine_25
    case fluorine_26
    case fluorine_26_isomer_1
    case fluorine_27
    case fluorine_28
    case fluorine_29
    //case fluorine_30 // TODO: fix | doesn't exist??
    case fluorine_31
    
    public var element : ChemicalElement {
        return ChemicalElement.fluorine
    }
    
    public var load_details: ChemicalElementDetails {
        switch self {
        case .fluorine_13:
            return ChemicalElementDetails(self, neutron_count: 4, standard_atomic_weight: "13.045120", decay_mode: AtomicDecayType.proton_emission(amount: 1), half_life: nil) // TODO: fix
        case .fluorine_14:
            return ChemicalElementDetails(self, neutron_count: 5, standard_atomic_weight: "14.034320", decay_mode: AtomicDecayType.proton_emission(amount: 1), half_life: TimeUnit(prefix: .yocto, type: TimeUnitType.second, value: "500"))
        case .fluorine_15:
            return ChemicalElementDetails(self, neutron_count: 6, standard_atomic_weight: "15.017785", decay_mode: AtomicDecayType.proton_emission(amount: 1), half_life: TimeUnit(prefix: .zepto, type: TimeUnitType.second, value: "1.1"))
        case .fluorine_16:
            return ChemicalElementDetails(self, neutron_count: 7, standard_atomic_weight: "16.011460", decay_mode: AtomicDecayType.proton_emission(amount: 1), half_life: TimeUnit(prefix: .zepto, type: TimeUnitType.second, value: "21"))
        case .fluorine_17:
            return ChemicalElementDetails(self, neutron_count: 8, standard_atomic_weight: "17.00209524", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "64.370"))
        case .fluorine_18:
            return ChemicalElementDetails(self, neutron_count: 9, standard_atomic_weight: "18.0009373", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.minute, value: "109.734"))
        case .fluorine_18_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 9, standard_atomic_weight: "18.0009373", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "162"))
        case .fluorine_19:
            return ChemicalElementDetails(self, neutron_count: 10, standard_atomic_weight: "18.998403162067")
        case .fluorine_20:
            return ChemicalElementDetails(self, neutron_count: 11, standard_atomic_weight: "19.99998125", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.second, value: "11.0062"))
        case .fluorine_21:
            return ChemicalElementDetails(self, neutron_count: 12, standard_atomic_weight: "20.9999489", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.second, value: "4.158"))
        case .fluorine_22:
            return ChemicalElementDetails(self, neutron_count: 13, standard_atomic_weight: "22.002999", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.second, value: "4.23"))
        case .fluorine_23:
            return ChemicalElementDetails(self, neutron_count: 14, standard_atomic_weight: "23.003530", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.second, value: "2.23"))
        case .fluorine_24:
            return ChemicalElementDetails(self, neutron_count: 15, standard_atomic_weight: "24.008100", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "384"))
        case .fluorine_25:
            return ChemicalElementDetails(self, neutron_count: 16, standard_atomic_weight: "25.012170", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "80"))
        case .fluorine_26:
            return ChemicalElementDetails(self, neutron_count: 17, standard_atomic_weight: "26.020050", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "8.2"))
        case .fluorine_26_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 17, standard_atomic_weight: "26.020050", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "2.2"))
        case .fluorine_27:
            return ChemicalElementDetails(self, neutron_count: 18, standard_atomic_weight: "27.026980", decay_mode: AtomicDecayType.beta_minus_neutron_emission, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "5.0"))
        case .fluorine_28:
            return ChemicalElementDetails(self, neutron_count: 19, standard_atomic_weight: "28.035860", decay_mode: AtomicDecayType.neutron_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.zepto, type: TimeUnitType.second, value: "46"))
        case .fluorine_29:
            return ChemicalElementDetails(self, neutron_count: 20, standard_atomic_weight: "29.043100", decay_mode: AtomicDecayType.beta_minus_neutron_emission, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "2.5"))
        case .fluorine_31:
            return ChemicalElementDetails(self, neutron_count: 22, standard_atomic_weight: "31.06020", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "2"))
        }
    }
}
