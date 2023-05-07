//
//  SiliconIsotope.swift
//  
//
//  Created by Evan Anderson on 5/1/23.
//

import Foundation
import huge_numbers

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
            return ChemicalElementDetails(self, neutron_count: 8, standard_atomic_weight: 22.035_79, decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("29")))
        case .silicon_23:
            return ChemicalElementDetails(self, neutron_count: 9, standard_atomic_weight: 23.025_44, decay_mode: AtomicDecayType.beta_plus_proton_emission, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("42.3")))
        case .silicon_24:
            return ChemicalElementDetails(self, neutron_count: 10, standard_atomic_weight: 24.011_535, decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("140")))
        case .silicon_25:
            return ChemicalElementDetails(self, neutron_count: 11, standard_atomic_weight: 25.004_109, decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("220")))
        case .silicon_26:
            return ChemicalElementDetails(self, neutron_count: 12, standard_atomic_weight: 25.992_333_8, decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: HugeFloat("2.2453")))
        case .silicon_27:
            return ChemicalElementDetails(self, neutron_count: 13, standard_atomic_weight: 26.986_704_69, decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: HugeFloat("4.15")))
        case .silicon_28:
            return ChemicalElementDetails(self, neutron_count: 14, standard_atomic_weight: 27.976_926_535_0)
        case .silicon_29:
            return ChemicalElementDetails(self, neutron_count: 15, standard_atomic_weight: 28.976_494_665_3)
        case .silicon_30:
            return ChemicalElementDetails(self, neutron_count: 16, standard_atomic_weight: 29.973_770_137)
        case .silicon_31:
            return ChemicalElementDetails(self, neutron_count: 17, standard_atomic_weight: 30.975_363_19, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.minute, value: HugeFloat("157.36")))
        case .silicon_32:
            return ChemicalElementDetails(self, neutron_count: 18, standard_atomic_weight: 31.974_151_5, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.year, value: HugeFloat("153")))
        case .silicon_33:
            return ChemicalElementDetails(self, neutron_count: 19, standard_atomic_weight: 32.977_977_0, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.second, value: HugeFloat("6.18")))
        case .silicon_34:
            return ChemicalElementDetails(self, neutron_count: 20, standard_atomic_weight: 33.978_575, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.second, value: HugeFloat("2.77")))
        case .silicon_35:
            return ChemicalElementDetails(self, neutron_count: 21, standard_atomic_weight: 34.984_55, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("780")))
        case .silicon_36:
            return ChemicalElementDetails(self, neutron_count: 22, standard_atomic_weight: 35.986_65, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("450")))
        case .silicon_37:
            return ChemicalElementDetails(self, neutron_count: 23, standard_atomic_weight: 36.992_95, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("90")))
        case .silicon_38:
            return ChemicalElementDetails(self, neutron_count: 24, standard_atomic_weight: 37.995_52, decay_mode: AtomicDecayType.beta_minus_neutron_emission, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("63")))
        case .silicon_39:
            return ChemicalElementDetails(self, neutron_count: 25, standard_atomic_weight: 39.002_49, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("47.5")))
        case .silicon_40:
            return ChemicalElementDetails(self, neutron_count: 26, standard_atomic_weight: 40.005_83, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("33.0")))
        case .silicon_41:
            return ChemicalElementDetails(self, neutron_count: 27, standard_atomic_weight: 41.013_01, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("20.0")))
        case .silicon_42:
            return ChemicalElementDetails(self, neutron_count: 28, standard_atomic_weight: 42.017_68, decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("12.5")))
        case .silicon_43:
            return ChemicalElementDetails(self, neutron_count: 29, standard_atomic_weight: 42.024_80, decay_mode: AtomicDecayType.beta_minus_neutron_emission, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("13")))
        case .silicon_44:
            return ChemicalElementDetails(self, neutron_count: 30, standard_atomic_weight: 44.031_47, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("4"))) // TODO: fix
        }
    }
}
