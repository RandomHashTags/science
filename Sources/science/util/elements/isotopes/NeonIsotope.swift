//
//  NeonIsotope.swift
//  
//
//  Created by Evan Anderson on 5/8/23.
//

import Foundation

// https://en.wikipedia.org/wiki/Isotopes_of_neon
public enum NeonIsotope : String, ChemicalElementIsotope {
    case neon_15
    case neon_16
    case neon_17
    case neon_18
    case neon_19
    case neon_20
    case neon_21
    case neon_22
    case neon_23
    case neon_24
    case neon_25
    case neon_26
    case neon_27
    case neon_28
    case neon_29
    case neon_30
    case neon_31
    case neon_32
    case neon_33
    case neon_34
    
    public var element : ChemicalElement {
        return ChemicalElement.neon
    }
    
    public var load_details: ChemicalElementDetails {
        switch self {
        case .neon_15:
            return ChemicalElementDetails(self, neutron_count: 5, standard_atomic_weight: "15.043170", decay_mode: AtomicDecayType.proton_emission(amount: 2), half_life: TimeUnit(prefix: UnitPrefix.yocto, type: TimeUnitType.second, value: "770"))
        case .neon_16:
            return ChemicalElementDetails(self, neutron_count: 6, standard_atomic_weight: "16.025751", decay_mode: AtomicDecayType.proton_emission(amount: 2), half_life: TimeUnit(prefix: UnitPrefix.zepto, type: TimeUnitType.second, value: "5.8"))
        case .neon_17:
            return ChemicalElementDetails(self, neutron_count: 7, standard_atomic_weight: "17.0177140", decay_mode: AtomicDecayType.beta_plus_proton_emission, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "109.2"))
        case .neon_18:
            return ChemicalElementDetails(self, neutron_count: 8, standard_atomic_weight: "18.0057087", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "1664.20"))
        case .neon_19:
            return ChemicalElementDetails(self, neutron_count: 9, standard_atomic_weight: "19.00188091", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "17.2569"))
        case .neon_20:
            return ChemicalElementDetails(self, neutron_count: 10, standard_atomic_weight: "19.9924401753")
        case .neon_21:
            return ChemicalElementDetails(self, neutron_count: 11, standard_atomic_weight: "20.99384669")
        case .neon_22:
            return ChemicalElementDetails(self, neutron_count: 12, standard_atomic_weight: "21.991385114")
        case .neon_23:
            return ChemicalElementDetails(self, neutron_count: 13, standard_atomic_weight: "22.99446691", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "37.15"))
        case .neon_24:
            return ChemicalElementDetails(self, neutron_count: 14, standard_atomic_weight: "23.9936106", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.minute, value: "3.38"))
        case .neon_25:
            return ChemicalElementDetails(self, neutron_count: 15, standard_atomic_weight: "24.997810", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "602"))
        case .neon_26:
            return ChemicalElementDetails(self, neutron_count: 16, standard_atomic_weight: "26.000516", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "197"))
        case .neon_27:
            return ChemicalElementDetails(self, neutron_count: 17, standard_atomic_weight: "27.007570", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "30.9"))
        case .neon_28:
            return ChemicalElementDetails(self, neutron_count: 18, standard_atomic_weight: "28.012130", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "18.8"))
        case .neon_29:
            return ChemicalElementDetails(self, neutron_count: 19, standard_atomic_weight: "29.019750", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "14.7"))
        case .neon_30:
            return ChemicalElementDetails(self, neutron_count: 20, standard_atomic_weight: "30.024990", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "7.22"))
        case .neon_31:
            return ChemicalElementDetails(self, neutron_count: 21, standard_atomic_weight: "31.033470", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "3.4"))
        case .neon_32:
            return ChemicalElementDetails(self, neutron_count: 22, standard_atomic_weight: "32.039720", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "3.5"))
        case .neon_33:
            return ChemicalElementDetails(self, neutron_count: 23, standard_atomic_weight: "33.049520", decay_mode: AtomicDecayType.neutron_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "259"))
        case .neon_34:
            return ChemicalElementDetails(self, neutron_count: 24, standard_atomic_weight: "34.056730", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "2"))
        }
    }
}
