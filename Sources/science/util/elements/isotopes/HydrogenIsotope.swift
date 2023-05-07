//
//  HydrogenIsotope.swift
//  
//
//  Created by Evan Anderson on 4/30/23.
//

import Foundation
import huge_numbers

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
            return ChemicalElementDetails(self, neutron_count: 0, standard_atomic_weight: 1.007_825_031_898)
        case .hydrogen_2:
            return ChemicalElementDetails(self, neutron_count: 1, standard_atomic_weight: 2.014_101_777_844)
        case .hydrogen_3:
            return ChemicalElementDetails(self, neutron_count: 2, standard_atomic_weight: 3.016_049_281_320, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.year, value: HugeFloat("12.32")))
        case .hydrogen_4:
            return ChemicalElementDetails(self, neutron_count: 3, standard_atomic_weight: 4.026_43, decay_mode: AtomicDecayType.neutron_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.yocto, type: TimeUnitType.second, value: HugeFloat("139")))
        case .hydrogen_5:
            return ChemicalElementDetails(self, neutron_count: 4, standard_atomic_weight: 5.035_31, decay_mode: AtomicDecayType.neutron_emission(amount: 2), half_life: TimeUnit(prefix: UnitPrefix.yocto, type: TimeUnitType.second, value: HugeFloat("86")))
        case .hydrogen_6:
            return ChemicalElementDetails(self, neutron_count: 5, standard_atomic_weight: 6.044_96, decay_mode: AtomicDecayType.neutron_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.yocto, type: TimeUnitType.second, value: HugeFloat("294")))
        case .hydrogen_7:
            return ChemicalElementDetails(self, neutron_count: 6, standard_atomic_weight: 7.052_750, decay_mode: AtomicDecayType.neutron_emission(amount: 2), half_life: TimeUnit(prefix: UnitPrefix.yocto, type: TimeUnitType.second, value: HugeFloat("652")))
        }
    }
}
