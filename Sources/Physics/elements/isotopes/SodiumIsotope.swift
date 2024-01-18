//
//  SodiumIsotope.swift
//  
//
//  Created by Evan Anderson on 5/8/23.
//

import Foundation
import SwiftUnits

// https://en.wikipedia.org/wiki/Isotopes_of_sodium
public enum SodiumIsotope : String, ChemicalElementIsotope {
    case sodium_17
    case sodium_18
    case sodium_19
    case sodium_20
    case sodium_21
    case sodium_22
    case sodium_22_isomer_1
    case sodium_22_isomer_2
    case sodium_23
    case sodium_24
    case sodium_24_isomer_1
    case sodium_25
    case sodium_26
    case sodium_26_isomer_1
    case sodium_27
    case sodium_28
    case sodium_29
    case sodium_30
    case sodium_31
    case sodium_32
    case sodium_33
    case sodium_34
    case sodium_35
    case sodium_37
    case sodium_39
    
    public var element : ChemicalElement {
        return ChemicalElement.sodium
    }
    
    public var load_details : ChemicalElementDetails {
        switch self {
        case .sodium_17:
            return ChemicalElementDetails(self, neutrons: 6, standard_atomic_weight: "17.037270", decay_mode: AtomicDecayType.proton_emission(amount: 1), half_life: nil) // TODO: fix
        case .sodium_18:
            return ChemicalElementDetails(self, neutrons: 7, standard_atomic_weight: "18.02688", decay_mode: AtomicDecayType.proton_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.zepto, type: TimeUnitType.second, value: "1.3"))
        case .sodium_19:
            return ChemicalElementDetails(self, neutrons: 8, standard_atomic_weight: "19.013880", decay_mode: AtomicDecayType.proton_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.atto, type: TimeUnitType.second, value: "2"))
        case .sodium_20:
            return ChemicalElementDetails(self, neutrons: 9, standard_atomic_weight: "20.0073543", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "447.9"))
        case .sodium_21:
            return ChemicalElementDetails(self, neutrons: 10, standard_atomic_weight: "20.99765446", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "22.4550"))
        case .sodium_22:
            return ChemicalElementDetails(self, neutrons: 11, standard_atomic_weight: "21.99443742", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.year, value: "2.6019")) // TODO: fix (in tropical years)
        case .sodium_22_isomer_1:
            return ChemicalElementDetails(self, neutrons: 11, standard_atomic_weight: "21.99443742", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "243"))
        case .sodium_22_isomer_2:
            return ChemicalElementDetails(self, neutrons: 11, standard_atomic_weight: "21.99443742", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(prefix: UnitPrefix.pico, type: TimeUnitType.second, value: "19.6"))
        case .sodium_23:
            return ChemicalElementDetails(self, neutrons: 12, standard_atomic_weight: "22.9897692820")
        case .sodium_24:
            return ChemicalElementDetails(self, neutrons: 13, standard_atomic_weight: "23.990963012", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.hour, value: "14.9560"))
        case .sodium_24_isomer_1:
            return ChemicalElementDetails(self, neutrons: 13, standard_atomic_weight: "23.990963012", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "20.18"))
        case .sodium_25:
            return ChemicalElementDetails(self, neutrons: 14, standard_atomic_weight: "24.9899540", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "59.1"))
        case .sodium_26:
            return ChemicalElementDetails(self, neutrons: 15, standard_atomic_weight: "25.992635", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "1.07128"))
        case .sodium_26_isomer_1:
            return ChemicalElementDetails(self, neutrons: 15, standard_atomic_weight: "25.992635", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "4.35"))
        case .sodium_27:
            return ChemicalElementDetails(self, neutrons: 16, standard_atomic_weight: "26.994076", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "301"))
        case .sodium_28:
            return ChemicalElementDetails(self, neutrons: 17, standard_atomic_weight: "27.998939", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "33.1"))
        case .sodium_29:
            return ChemicalElementDetails(self, neutrons: 18, standard_atomic_weight: "29.002877", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "43.2"))
        case .sodium_30:
            return ChemicalElementDetails(self, neutrons: 19, standard_atomic_weight: "30.009098", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "45.9"))
        case .sodium_31:
            return ChemicalElementDetails(self, neutrons: 20, standard_atomic_weight: "31.013147", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "16.8"))
        case .sodium_32:
            return ChemicalElementDetails(self, neutrons: 21, standard_atomic_weight: "32.020010", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "12.9"))
        case .sodium_33:
            return ChemicalElementDetails(self, neutrons: 22, standard_atomic_weight: "33.02553", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "8.2"))
        case .sodium_34:
            return ChemicalElementDetails(self, neutrons: 23, standard_atomic_weight: "34.03401", decay_mode: AtomicDecayType.beta_minus_neutron_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "5.5")) // TODO: 2 neutron emission
        case .sodium_35:
            return ChemicalElementDetails(self, neutrons: 24, standard_atomic_weight: "35.04061", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "1.5"))
        case .sodium_37:
            return ChemicalElementDetails(self, neutrons: 26, standard_atomic_weight: "37.05704", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "1.6"))
        case .sodium_39:
            return ChemicalElementDetails(self, neutrons: 28, standard_atomic_weight: "39.075", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "401"))
        }
    }
}
