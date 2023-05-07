//
//  BoronIsotope.swift
//  
//
//  Created by Evan Anderson on 5/7/23.
//

import Foundation
import huge_numbers

// https://en.wikipedia.org/wiki/Isotopes_of_boron
public enum BoronIsotope : String, ChemicalElementIsotope {
    case boron_6
    case boron_7
    case boron_8
    case boron_9
    case boron_10
    case boron_11
    case boron_12
    case boron_13
    case boron_14
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
            return ChemicalElementDetails(self, neutron_count: 1, standard_atomic_weight: 6.050_800, decay_mode: AtomicDecayType.proton_emission(amount: 2), half_life: nil) // TODO: fix
        case .boron_7:
            return ChemicalElementDetails(self, neutron_count: 2, standard_atomic_weight: 7.029_712, decay_mode: AtomicDecayType.proton_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.yocto, type: TimeUnitType.second, value: HugeFloat("570")))
        case .boron_8:
            return ChemicalElementDetails(self, neutron_count: 3, standard_atomic_weight: 8.024_6073, decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("771.9"))) // TODO: fix
        case .boron_9:
            return ChemicalElementDetails(self, neutron_count: 4, standard_atomic_weight: 9.013_329_6, decay_mode: AtomicDecayType.proton_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.zepto, type: TimeUnitType.second, value: HugeFloat("800"))) // TODO: fix
        case .boron_10:
            return ChemicalElementDetails(self, neutron_count: 5, standard_atomic_weight: 10.012_936_862)
        case .boron_11:
            return ChemicalElementDetails(self, neutron_count: 6, standard_atomic_weight: 11.009_305_167)
        case .boron_12:
            return ChemicalElementDetails(self, neutron_count: 7, standard_atomic_weight: 12.014_352_6, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("20.20")))
        case .boron_13:
            return ChemicalElementDetails(self, neutron_count: 8, standard_atomic_weight: 13.017_780_0, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("17.16")))
        case .boron_14:
            return ChemicalElementDetails(self, neutron_count: 9, standard_atomic_weight: 14.025_404, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("12.36")))
        case .boron_15:
            return ChemicalElementDetails(self, neutron_count: 10, standard_atomic_weight: 15.031_087, decay_mode: AtomicDecayType.beta_minus_neutron_emission, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("10.18")))
        case .boron_16:
            return ChemicalElementDetails(self, neutron_count: 11, standard_atomic_weight: 16.039_841, decay_mode: AtomicDecayType.neutron_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.zepto, type: TimeUnitType.second, value: HugeFloat("4.7")))
        case .boron_17:
            return ChemicalElementDetails(self, neutron_count: 12, standard_atomic_weight: 17.046_93, decay_mode: AtomicDecayType.beta_minus_neutron_emission, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("5.08")))
        case .boron_18:
            return ChemicalElementDetails(self, neutron_count: 13, standard_atomic_weight: 18.055_60, decay_mode: AtomicDecayType.neutron_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: HugeFloat("25")))
        case .boron_19:
            return ChemicalElementDetails(self, neutron_count: 14, standard_atomic_weight: 19.064_17, decay_mode: AtomicDecayType.beta_minus_neutron_emission, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("2.92")))
        case .boron_20:
            return ChemicalElementDetails(self, neutron_count: 15, standard_atomic_weight: 20.074_51, decay_mode: AtomicDecayType.neutron_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.yocto, type: TimeUnitType.second, value: HugeFloat("912.5")))
        case .boron_21:
            return ChemicalElementDetails(self, neutron_count: 16, standard_atomic_weight: 21.084_15, decay_mode: AtomicDecayType.neutron_emission(amount: 2), half_life: TimeUnit(prefix: UnitPrefix.yocto, type: TimeUnitType.second, value: HugeFloat("760.1")))
        }
    }
}
