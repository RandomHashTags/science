//
//  HydrogenIsotope.swift
//  
//
//  Created by Evan Anderson on 4/30/23.
//

import Foundation

// https://en.wikipedia.org/wiki/Isotopes_of_hydrogen
public enum HydrogenIsotope : String, ChemicalElementIsotope {
    /// protium
    case hydrogen_1
    /// deuterium
    case hydrogen_2
    /// tritium
    case hydrogen_3
    case hydrogen_4
    case hydrogen_5
    case hydrogen_6
    case hydrogen_7
    
    public var element : ChemicalElement {
        return ChemicalElement.hydrogen
    }
    
    public var load_details : ChemicalElementDetails {
        switch self {
        case .hydrogen_1:
            return ChemicalElementDetails(self, neutron_count: 0, standard_atomic_weight: "1.007825031898")
        case .hydrogen_2:
            return ChemicalElementDetails(self, neutron_count: 1, standard_atomic_weight: "2.014101777844")
        case .hydrogen_3:
            return ChemicalElementDetails(self, neutron_count: 2, standard_atomic_weight: "3.016049281320", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.year, value: "12.32"))
        case .hydrogen_4:
            return ChemicalElementDetails(self, neutron_count: 3, standard_atomic_weight: "4.02643", decay_mode: AtomicDecayType.neutron_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.yocto, type: TimeUnitType.second, value: "139"))
        case .hydrogen_5:
            return ChemicalElementDetails(self, neutron_count: 4, standard_atomic_weight: "5.03531", decay_mode: AtomicDecayType.neutron_emission(amount: 2), half_life: TimeUnit(prefix: UnitPrefix.yocto, type: TimeUnitType.second, value: "86"))
        case .hydrogen_6:
            return ChemicalElementDetails(self, neutron_count: 5, standard_atomic_weight: "6.04496", decay_mode: AtomicDecayType.neutron_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.yocto, type: TimeUnitType.second, value: "294"))
        case .hydrogen_7:
            return ChemicalElementDetails(self, neutron_count: 6, standard_atomic_weight: "7.052750", decay_mode: AtomicDecayType.neutron_emission(amount: 2), half_life: TimeUnit(prefix: UnitPrefix.yocto, type: TimeUnitType.second, value: "652"))
        }
    }
}
