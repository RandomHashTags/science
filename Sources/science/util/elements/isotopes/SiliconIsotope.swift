//
//  SiliconIsotope.swift
//  
//
//  Created by Evan Anderson on 5/1/23.
//

import Foundation

// https://en.wikipedia.org/wiki/Isotopes_of_silicon
public enum SiliconIsotope : String, ChemicalElementIsotope {
    case silicon_22
    case silicon_23
    case silicon_24
    case silicon_25
    case silicon_26
    case silicon_27
    case silicon_28
    case silicon_29
    case silicon_30
    case silicon_31
    case silicon_32
    case silicon_33
    case silicon_34
    case silicon_34_isomer_1
    case silicon_35
    case silicon_36
    case silicon_37
    case silicon_38
    case silicon_39
    case silicon_40
    case silicon_41
    case silicon_42
    case silicon_43
    case silicon_44
    
    public var element : ChemicalElement {
        return ChemicalElement.silicon
    }
    
    public var load_details: ChemicalElementDetails {
        switch self {
        case .silicon_22:
            return ChemicalElementDetails(self, neutron_count: 8, standard_atomic_weight: "22.03579", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "29"))
        case .silicon_23:
            return ChemicalElementDetails(self, neutron_count: 9, standard_atomic_weight: "23.02544", decay_mode: AtomicDecayType.beta_plus_proton_emission, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "42.3"))
        case .silicon_24:
            return ChemicalElementDetails(self, neutron_count: 10, standard_atomic_weight: "24.011535", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "140"))
        case .silicon_25:
            return ChemicalElementDetails(self, neutron_count: 11, standard_atomic_weight: "25.004109", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "220"))
        case .silicon_26:
            return ChemicalElementDetails(self, neutron_count: 12, standard_atomic_weight: "25.9923338", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "2.2453"))
        case .silicon_27:
            return ChemicalElementDetails(self, neutron_count: 13, standard_atomic_weight: "26.98670469", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "4.15"))
        case .silicon_28:
            return ChemicalElementDetails(self, neutron_count: 14, standard_atomic_weight: "27.9769265350")
        case .silicon_29:
            return ChemicalElementDetails(self, neutron_count: 15, standard_atomic_weight: "28.9764946653")
        case .silicon_30:
            return ChemicalElementDetails(self, neutron_count: 16, standard_atomic_weight: "29.973770137")
        case .silicon_31:
            return ChemicalElementDetails(self, neutron_count: 17, standard_atomic_weight: "30.97536319", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.minute, value: "157.36"))
        case .silicon_32:
            return ChemicalElementDetails(self, neutron_count: 18, standard_atomic_weight: "31.9741515", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.year, value: "153"))
        case .silicon_33:
            return ChemicalElementDetails(self, neutron_count: 19, standard_atomic_weight: "32.9779770", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "6.18"))
        case .silicon_34:
            return ChemicalElementDetails(self, neutron_count: 20, standard_atomic_weight: "33.978575", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "2.77"))
        case .silicon_34_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 20, standard_atomic_weight: "33.978575", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "209"))
        case .silicon_35:
            return ChemicalElementDetails(self, neutron_count: 21, standard_atomic_weight: "34.98455", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "780"))
        case .silicon_36:
            return ChemicalElementDetails(self, neutron_count: 22, standard_atomic_weight: "35.98665", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "450"))
        case .silicon_37:
            return ChemicalElementDetails(self, neutron_count: 23, standard_atomic_weight: "36.99295", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "90"))
        case .silicon_38:
            return ChemicalElementDetails(self, neutron_count: 24, standard_atomic_weight: "37.99552", decay_mode: AtomicDecayType.beta_minus_neutron_emission, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "63"))
        case .silicon_39:
            return ChemicalElementDetails(self, neutron_count: 25, standard_atomic_weight: "39.00249", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "47.5"))
        case .silicon_40:
            return ChemicalElementDetails(self, neutron_count: 26, standard_atomic_weight: "40.00583", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "33.0"))
        case .silicon_41:
            return ChemicalElementDetails(self, neutron_count: 27, standard_atomic_weight: "41.01301", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "20.0"))
        case .silicon_42:
            return ChemicalElementDetails(self, neutron_count: 28, standard_atomic_weight: "42.01768", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "12.5"))
        case .silicon_43:
            return ChemicalElementDetails(self, neutron_count: 29, standard_atomic_weight: "42.02480", decay_mode: AtomicDecayType.beta_minus_neutron_emission, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "13"))
        case .silicon_44:
            return ChemicalElementDetails(self, neutron_count: 30, standard_atomic_weight: "44.03147", half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "4")) // TODO: fix
        }
    }
}
