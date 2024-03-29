//
//  HeliumIsotope.swift
//  
//
//  Created by Evan Anderson on 4/30/23.
//

import Foundation
import SwiftUnits

// https://en.wikipedia.org/wiki/Isotopes_of_helium
public enum HeliumIsotope : String, ChemicalElementIsotope {
    case helium_2
    case helium_3
    case helium_4
    case helium_5
    case helium_6
    case helium_7
    case helium_8
    case helium_9
    case helium_10
    
    public var element : ChemicalElement {
        return ChemicalElement.helium
    }
    
    public var load_details : ChemicalElementDetails {
        switch self {
        case .helium_2:
            return ChemicalElementDetails(self, neutrons: 0, standard_atomic_weight: "2.015894", decay_mode: AtomicDecayType.proton_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "1"))
        case .helium_3:
            return ChemicalElementDetails(self, neutrons: 1, standard_atomic_weight: "3.016029321967")
        case .helium_4:
            return ChemicalElementDetails(self, neutrons: 2, standard_atomic_weight: "4.002603254130")
        case .helium_5:
            return ChemicalElementDetails(self, neutrons: 3, standard_atomic_weight: "5.012057", decay_mode: AtomicDecayType.neutron_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.yocto, type: TimeUnitType.second, value: "602"))
        case .helium_6:
            return ChemicalElementDetails(self, neutrons: 4, standard_atomic_weight: "6.01888589", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "806.92"))
        case .helium_7:
            return ChemicalElementDetails(self, neutrons: 5, standard_atomic_weight: "7.027991", decay_mode: AtomicDecayType.neutron_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.zepto, type: TimeUnitType.second, value: "2.51"))
        case .helium_8:
            return ChemicalElementDetails(self, neutrons: 6, standard_atomic_weight: "8.03393439", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.zepto, type: TimeUnitType.second, value: "119.5"))
        case .helium_9:
            return ChemicalElementDetails(self, neutrons: 7, standard_atomic_weight: "9.043950", decay_mode: AtomicDecayType.neutron_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.zepto, type: TimeUnitType.second, value: "2.5"))
        case .helium_10:
            return ChemicalElementDetails(self, neutrons: 8, standard_atomic_weight: "10.05282", decay_mode: AtomicDecayType.neutron_emission(amount: 2), half_life: TimeUnit(prefix: UnitPrefix.yocto, type: TimeUnitType.second, value: "260"))
        }
    }
}
