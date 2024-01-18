//
//  BoronIsotope.swift
//  
//
//  Created by Evan Anderson on 5/7/23.
//

import Foundation
import SwiftUnits

// https://en.wikipedia.org/wiki/Isotopes_of_boron
public enum BoronIsotope : String, ChemicalElementIsotope {
    case boron_6
    case boron_7
    case boron_8
    case boron_8_isomer_1
    case boron_9
    case boron_10
    case boron_11
    case boron_12
    case boron_13
    case boron_14
    case boron_14_isomer_1
    case boron_15
    case boron_16
    case boron_17
    case boron_18
    case boron_19
    case boron_20
    case boron_21
    
    public var element : ChemicalElement {
        return ChemicalElement.boron
    }
    
    public var load_details : ChemicalElementDetails {
        switch self {
        case .boron_6:
            return ChemicalElementDetails(self, neutrons: 1, standard_atomic_weight: "6.050800", decay_mode: AtomicDecayType.proton_emission(amount: 2), half_life: nil) // TODO: fix
        case .boron_7:
            return ChemicalElementDetails(self, neutrons: 2, standard_atomic_weight: "7.029712", decay_mode: AtomicDecayType.proton_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.yocto, type: TimeUnitType.second, value: "570"))
        case .boron_8:
            return ChemicalElementDetails(self, neutrons: 3, standard_atomic_weight: "8.0246073", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "771.9")) // TODO: fix
        case .boron_8_isomer_1:
            return ChemicalElementDetails(self, neutrons: 3, standard_atomic_weight: "8.0246073", decay_mode: AtomicDecayType.isomeric_transition, half_life: nil) // TODO: fix
        case .boron_9:
            return ChemicalElementDetails(self, neutrons: 4, standard_atomic_weight: "9.0133296", decay_mode: AtomicDecayType.proton_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.zepto, type: TimeUnitType.second, value: "800")) // TODO: fix
        case .boron_10:
            return ChemicalElementDetails(self, neutrons: 5, standard_atomic_weight: "10.012936862")
        case .boron_11:
            return ChemicalElementDetails(self, neutrons: 6, standard_atomic_weight: "11.009305167")
        case .boron_12:
            return ChemicalElementDetails(self, neutrons: 7, standard_atomic_weight: "12.0143526", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "20.20"))
        case .boron_13:
            return ChemicalElementDetails(self, neutrons: 8, standard_atomic_weight: "13.0177800", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "17.16"))
        case .boron_14:
            return ChemicalElementDetails(self, neutrons: 9, standard_atomic_weight: "14.025404", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "12.36"))
        case .boron_14_isomer_1:
            return ChemicalElementDetails(self, neutrons: 9, standard_atomic_weight: "14.025404", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(prefix: UnitPrefix.zepto, type: TimeUnitType.second, value: "4.15"))
        case .boron_15:
            return ChemicalElementDetails(self, neutrons: 10, standard_atomic_weight: "15.031087", decay_mode: AtomicDecayType.beta_minus_neutron_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "10.18"))
        case .boron_16:
            return ChemicalElementDetails(self, neutrons: 11, standard_atomic_weight: "16.039841", decay_mode: AtomicDecayType.neutron_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.zepto, type: TimeUnitType.second, value: "4.7"))
        case .boron_17:
            return ChemicalElementDetails(self, neutrons: 12, standard_atomic_weight: "17.04693", decay_mode: AtomicDecayType.beta_minus_neutron_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "5.08"))
        case .boron_18:
            return ChemicalElementDetails(self, neutrons: 13, standard_atomic_weight: "18.05560", decay_mode: AtomicDecayType.neutron_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "25"))
        case .boron_19:
            return ChemicalElementDetails(self, neutrons: 14, standard_atomic_weight: "19.06417", decay_mode: AtomicDecayType.beta_minus_neutron_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "2.92"))
        case .boron_20:
            return ChemicalElementDetails(self, neutrons: 15, standard_atomic_weight: "20.07451", decay_mode: AtomicDecayType.neutron_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.yocto, type: TimeUnitType.second, value: "912.5"))
        case .boron_21:
            return ChemicalElementDetails(self, neutrons: 16, standard_atomic_weight: "21.08415", decay_mode: AtomicDecayType.neutron_emission(amount: 2), half_life: TimeUnit(prefix: UnitPrefix.yocto, type: TimeUnitType.second, value: "760.1"))
        }
    }
}
