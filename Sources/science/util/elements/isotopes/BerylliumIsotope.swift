//
//  BerylliumIsotope.swift
//  
//
//  Created by Evan Anderson on 5/1/23.
//

import Foundation
import huge_numbers

// https://en.wikipedia.org/wiki/Isotopes_of_beryllium
public enum BerylliumIsotope : String, ChemicalElementIsotope {
    case beryllium_5
    case beryllium_6
    case beryllium_7
    case beryllium_8
    case beryllium_9
    case beryllium_10
    case beryllium_11
    case beryllium_12
    case beryllium_13
    case beryllium_14
    case beryllium_15
    case beryllium_16
    
    public var element : ChemicalElement {
        return ChemicalElement.beryllium
    }
    
    public var load_details : ChemicalElementDetails {
        switch self {
        case .beryllium_5:
            return ChemicalElementDetails(self, neutron_count: 1, standard_atomic_weight: 5.039_87, decay_mode: AtomicDecayType.proton_emission(amount: 1), half_life: nil) // TODO: fix
        case .beryllium_6:
            return ChemicalElementDetails(self, neutron_count: 2, standard_atomic_weight: 6.019_726, decay_mode: AtomicDecayType.proton_emission(amount: 2), half_life: TimeUnit(prefix: UnitPrefix.zepto, type: TimeUnitType.second, value: HugeFloat("5.0")))
        case .beryllium_7:
            return ChemicalElementDetails(self, neutron_count: 3, standard_atomic_weight: 7.016_928_71, decay_mode: AtomicDecayType.electron_capture, half_life: TimeUnit(type: TimeUnitType.day, value: HugeFloat("53.22")))
        case .beryllium_8:
            return ChemicalElementDetails(self, neutron_count: 4, standard_atomic_weight: 8.005_305, decay_mode: AtomicDecayType.alpha, half_life: TimeUnit(prefix: UnitPrefix.atto, type: TimeUnitType.second, value: HugeFloat("81.9")))
        case .beryllium_9:
            return ChemicalElementDetails(self, neutron_count: 5, standard_atomic_weight: 9.012_183_06)
        case .beryllium_10:
            return ChemicalElementDetails(self, neutron_count: 6, standard_atomic_weight: 10.013_534_69, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.year, value: HugeFloat("1387000"))) // TODO: fix? | tropical year
        case .beryllium_11:
            return ChemicalElementDetails(self, neutron_count: 7, standard_atomic_weight: 11.021_661_08, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.second, value: HugeFloat("13.76")))
        case .beryllium_12:
            return ChemicalElementDetails(self, neutron_count: 8, standard_atomic_weight: 12.026_922_1, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("21.46")))
        case .beryllium_13:
            return ChemicalElementDetails(self, neutron_count: 9, standard_atomic_weight: 13.036_135, decay_mode: AtomicDecayType.neutron_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.zepto, type: TimeUnitType.second, value: HugeFloat("1.0")))
        case .beryllium_14:
            return ChemicalElementDetails(self, neutron_count: 10, standard_atomic_weight: 13.042_89, decay_mode: AtomicDecayType.beta_minus_neutron_emission, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("4.53")))
        case .beryllium_15:
            return ChemicalElementDetails(self, neutron_count: 11, standard_atomic_weight: 15.053_49, decay_mode: AtomicDecayType.neutron_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.yocto, type: TimeUnitType.second, value: HugeFloat("790")))
        case .beryllium_16:
            return ChemicalElementDetails(self, neutron_count: 12, standard_atomic_weight: 16.061_67, decay_mode: AtomicDecayType.neutron_emission(amount: 2), half_life: TimeUnit(prefix: UnitPrefix.yocto, type: TimeUnitType.second, value: HugeFloat("650")))
        }
    }
}
