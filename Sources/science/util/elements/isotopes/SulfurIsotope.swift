//
//  SulfurIsotope.swift
//  
//
//  Created by Evan Anderson on 5/13/23.
//

import Foundation

// https://en.wikipedia.org/wiki/Isotopes_of_sulfur
public enum SulfurIsotope : String, ChemicalElementIsotope {
    case sulfur_27
    case sulfur_28
    case sulfur_29
    case sulfur_30
    case sulfur_31
    case sulfur_32
    case sulfur_33
    case sulfur_34
    case sulfur_35
    case sulfur_36
    case sulfur_37
    case sulfur_38
    case sulfur_39
    case sulfur_40
    case sulfur_41
    case sulfur_42
    case sulfur_43
    case sulfur_43_isomer_1
    case sulfur_44
    case sulfur_44_isomer_1
    case sulfur_45
    case sulfur_46
    case sulfur_47
    case sulfur_48
    case sulfur_49
    
    public var element : ChemicalElement {
        return ChemicalElement.sulfur
    }
    
    public var load_details : ChemicalElementDetails {
        switch self {
        case .sulfur_27:
            return ChemicalElementDetails(self, neutron_count: 11, standard_atomic_weight: "27.01828", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "15.5"))
        case .sulfur_28:
            return ChemicalElementDetails(self, neutron_count: 12, standard_atomic_weight: "28.00437", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "125"))
        case .sulfur_29:
            return ChemicalElementDetails(self, neutron_count: 13, standard_atomic_weight: "28.99661", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "188"))
        case .sulfur_30:
            return ChemicalElementDetails(self, neutron_count: 14, standard_atomic_weight: "29.98490677", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "1.1759"))
        case .sulfur_31:
            return ChemicalElementDetails(self, neutron_count: 15, standard_atomic_weight: "30.97955701", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "2.5534"))
        case .sulfur_32:
            return ChemicalElementDetails(self, neutron_count: 16, standard_atomic_weight: "31.9720711744")
        case .sulfur_33:
            return ChemicalElementDetails(self, neutron_count: 17, standard_atomic_weight: "32.9714589099")
        case .sulfur_34:
            return ChemicalElementDetails(self, neutron_count: 18, standard_atomic_weight: "33.96786701")
        case .sulfur_35:
            return ChemicalElementDetails(self, neutron_count: 19, standard_atomic_weight: "34.96903232", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.day, value: "87.37"))
        case .sulfur_36:
            return ChemicalElementDetails(self, neutron_count: 20, standard_atomic_weight: "35.96708070")
        case .sulfur_37:
            return ChemicalElementDetails(self, neutron_count: 21, standard_atomic_weight: "36.97112551", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.minute, value: "5.05"))
        case .sulfur_38:
            return ChemicalElementDetails(self, neutron_count: 22, standard_atomic_weight: "37.971163", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.minute, value: "170.3"))
        case .sulfur_39:
            return ChemicalElementDetails(self, neutron_count: 23, standard_atomic_weight: "38.97513", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "11.5"))
        case .sulfur_40:
            return ChemicalElementDetails(self, neutron_count: 24, standard_atomic_weight: "39.975483", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "8.8"))
        case .sulfur_41:
            return ChemicalElementDetails(self, neutron_count: 25, standard_atomic_weight: "40.979593", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "1.99"))
        case .sulfur_42:
            return ChemicalElementDetails(self, neutron_count: 26, standard_atomic_weight: "41.981065", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "1.016"))
        case .sulfur_43:
            return ChemicalElementDetails(self, neutron_count: 27, standard_atomic_weight: "42.986908", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "265"))
        case .sulfur_43_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 27, standard_atomic_weight: "42.986908", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "415.0"))
        case .sulfur_44:
            return ChemicalElementDetails(self, neutron_count: 28, standard_atomic_weight: "43.990119", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "100"))
        case .sulfur_44_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 28, standard_atomic_weight: "43.990119", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "2.619"))
        case .sulfur_45:
            return ChemicalElementDetails(self, neutron_count: 29, standard_atomic_weight: "44.99572", decay_mode: AtomicDecayType.beta_minus_neutron_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "68"))
        case .sulfur_46:
            return ChemicalElementDetails(self, neutron_count: 30, standard_atomic_weight: "46.00037", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "50"))
        case .sulfur_47:
            return ChemicalElementDetails(self, neutron_count: 31, standard_atomic_weight: "47.00791", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "201"))
        case .sulfur_48:
            return ChemicalElementDetails(self, neutron_count: 32, standard_atomic_weight: "48.01370", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "201"))
        case .sulfur_49:
            return ChemicalElementDetails(self, neutron_count: 33, standard_atomic_weight: "49.02264", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: nil) // TODO: fix
        }
    }
}
