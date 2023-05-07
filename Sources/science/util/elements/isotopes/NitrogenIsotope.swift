//
//  NitrogenIsotope.swift
//  
//
//  Created by Evan Anderson on 5/7/23.
//

import Foundation
import huge_numbers

// https://en.wikipedia.org/wiki/Isotopes_of_nitrogen
public enum NitrogenIsotope : String, ChemicalElementIsotope {
    case nitrogen_10
    case nitrogen_11
    case nitrogen_12
    case nitrogen_13
    case nitrogen_14
    case nitrogen_15
    case nitrogen_16
    case nitrogen_17
    case nitrogen_18
    case nitrogen_19
    case nitrogen_20
    case nitrogen_21
    case nitrogen_22
    case nitrogen_23
    case nitrogen_24
    case nitrogen_25
    
    public var element : ChemicalElement {
        return ChemicalElement.nitrogen
    }
    
    public var load_details: ChemicalElementDetails {
        switch self {
        case .nitrogen_10:
            return ChemicalElementDetails(self, neutron_count: 3, standard_atomic_weight: 10.041_64, decay_mode: AtomicDecayType.proton_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.yocto, type: TimeUnitType.second, value: HugeFloat("143")))
        case .nitrogen_11:
            return ChemicalElementDetails(self, neutron_count: 4, standard_atomic_weight: 11.026_158, decay_mode: AtomicDecayType.proton_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.yocto, type: TimeUnitType.second, value: HugeFloat("585")))
        case .nitrogen_12:
            return ChemicalElementDetails(self, neutron_count: 5, standard_atomic_weight: 12.018_613_2, decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.yocto, type: TimeUnitType.second, value: HugeFloat("690")))
        case .nitrogen_13:
            return ChemicalElementDetails(self, neutron_count: 6, standard_atomic_weight: 13.005_738_61, decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.minute, value: HugeFloat("9.965")))
        case .nitrogen_14:
            return ChemicalElementDetails(self, neutron_count: 7, standard_atomic_weight: 14.003_074_004_251)
        case .nitrogen_15:
            return ChemicalElementDetails(self, neutron_count: 8, standard_atomic_weight: 15.000_108_898_266)
        case .nitrogen_16:
            return ChemicalElementDetails(self, neutron_count: 9, standard_atomic_weight: 16.006_101_9, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.second, value: HugeFloat("7.13")))
        case .nitrogen_17:
            return ChemicalElementDetails(self, neutron_count: 10, standard_atomic_weight: 17.008_449, decay_mode: AtomicDecayType.beta_minus_neutron_emission, half_life: TimeUnit(type: TimeUnitType.second, value: HugeFloat("4.173")))
        case .nitrogen_18:
            return ChemicalElementDetails(self, neutron_count: 11, standard_atomic_weight: 18.014_078, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("619.2")))
        case .nitrogen_19:
            return ChemicalElementDetails(self, neutron_count: 12, standard_atomic_weight: 19.017_022, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("336")))
        case .nitrogen_20:
            return ChemicalElementDetails(self, neutron_count: 13, standard_atomic_weight: 20.023_370, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("136")))
        case .nitrogen_21:
            return ChemicalElementDetails(self, neutron_count: 14, standard_atomic_weight: 21.027_09, decay_mode: AtomicDecayType.beta_minus_neutron_emission, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("85")))
        case .nitrogen_22:
            return ChemicalElementDetails(self, neutron_count: 15, standard_atomic_weight: 22.034_10, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("23")))
        case .nitrogen_23:
            return ChemicalElementDetails(self, neutron_count: 16, standard_atomic_weight: 23.039_42, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("13.9")))
        case .nitrogen_24:
            return ChemicalElementDetails(self, neutron_count: 17, standard_atomic_weight: 24.050_39, decay_mode: AtomicDecayType.neutron_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: HugeFloat("51.9")))
        case .nitrogen_25:
            return ChemicalElementDetails(self, neutron_count: 18, standard_atomic_weight: 25.060_10, decay_mode: AtomicDecayType.neutron_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: HugeFloat("259.9")))
        }
    }
}
