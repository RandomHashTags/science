//
//  ChlorineIsotope.swift
//  
//
//  Created by Evan Anderson on 5/13/23.
//

import Foundation

public enum ChlorineIsotope : String, ChemicalElementIsotope {
    case chlorine_28
    case chlorine_29
    case chlorine_30
    case chlorine_31
    case chlorine_32
    case chlorine_33
    case chlorine_34
    case chlorine_34_isomer_1
    case chlorine_35
    case chlorine_36
    case chlorine_37
    case chlorine_38
    case chlorine_38_isomer_1
    case chlorine_39
    case chlorine_40
    case chlorine_41
    case chlorine_42
    case chlorine_43
    case chlorine_44
    case chlorine_45
    case chlorine_46
    case chlorine_47
    case chlorine_48
    case chlorine_49
    case chlorine_50
    case chlorine_51
    case chlorine_52
    
    public var element : ChemicalElement {
        return ChemicalElement.chlorine
    }
    
    public var load_details : ChemicalElementDetails {
        switch self {
        case .chlorine_28:
            return ChemicalElementDetails(self, neutron_count: 11, standard_atomic_weight: "28.02954", decay_mode: AtomicDecayType.proton_emission(amount: 1), half_life: nil) // TODO: fix
        case .chlorine_29:
            return ChemicalElementDetails(self, neutron_count: 12, standard_atomic_weight: "29.01413", decay_mode: AtomicDecayType.proton_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.pico, type: TimeUnitType.second, value: "9"))
        case .chlorine_30:
            return ChemicalElementDetails(self, neutron_count: 13, standard_atomic_weight: "30.00477", decay_mode: AtomicDecayType.proton_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "29"))
        case .chlorine_31:
            return ChemicalElementDetails(self, neutron_count: 14, standard_atomic_weight: "30.992448", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "190"))
        case .chlorine_32:
            return ChemicalElementDetails(self, neutron_count: 15, standard_atomic_weight: "31.9856846", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "298"))
        case .chlorine_33:
            return ChemicalElementDetails(self, neutron_count: 16, standard_atomic_weight: "32.9774520", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "2.5038"))
        case .chlorine_34:
            return ChemicalElementDetails(self, neutron_count: 17, standard_atomic_weight: "33.97376249", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "1.5266"))
        case .chlorine_34_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 17, standard_atomic_weight: "33.97376249", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.minute, value: "31.99"))
        case .chlorine_35:
            return ChemicalElementDetails(self, neutron_count: 18, standard_atomic_weight: "34.96885269")
        case .chlorine_36:
            return ChemicalElementDetails(self, neutron_count: 19, standard_atomic_weight: "35.96830682", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.year, value: "301300"))
        case .chlorine_37:
            return ChemicalElementDetails(self, neutron_count: 20, standard_atomic_weight: "36.96590258")
        case .chlorine_38:
            return ChemicalElementDetails(self, neutron_count: 21, standard_atomic_weight: "37.96801042", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.minute, value: "37.24"))
        case .chlorine_38_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 21, standard_atomic_weight: "37.96801042", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "715"))
        case .chlorine_39:
            return ChemicalElementDetails(self, neutron_count: 22, standard_atomic_weight: "38.9680082", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.minute, value: "56.2"))
        case .chlorine_40:
            return ChemicalElementDetails(self, neutron_count: 23, standard_atomic_weight: "39.97042", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.minute, value: "1.35"))
        case .chlorine_41:
            return ChemicalElementDetails(self, neutron_count: 24, standard_atomic_weight: "40.97068", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.second, value: "38.4"))
        case .chlorine_42:
            return ChemicalElementDetails(self, neutron_count: 25, standard_atomic_weight: "41.97334", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.second, value: "6.8"))
        case .chlorine_43:
            return ChemicalElementDetails(self, neutron_count: 26, standard_atomic_weight: "42.97406", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.second, value: "3.13"))
        case .chlorine_44:
            return ChemicalElementDetails(self, neutron_count: 27, standard_atomic_weight: "43.97812", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.second, value: "0.56"))
        case .chlorine_45:
            return ChemicalElementDetails(self, neutron_count: 28, standard_atomic_weight: "44.98039", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "413"))
        case .chlorine_46:
            return ChemicalElementDetails(self, neutron_count: 29, standard_atomic_weight: "45.98512", decay_mode: AtomicDecayType.beta_minus_neutron_emission, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "232"))
        case .chlorine_47:
            return ChemicalElementDetails(self, neutron_count: 30, standard_atomic_weight: "46.98950", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "101"))
        case .chlorine_48:
            return ChemicalElementDetails(self, neutron_count: 31, standard_atomic_weight: "47.99541", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "100"))
        case .chlorine_49:
            return ChemicalElementDetails(self, neutron_count: 32, standard_atomic_weight: "49.00101", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "50"))
        case .chlorine_50:
            return ChemicalElementDetails(self, neutron_count: 33, standard_atomic_weight: "50.00831", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "20"))
        case .chlorine_51:
            return ChemicalElementDetails(self, neutron_count: 34, standard_atomic_weight: "51.01534", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "2"))
        case .chlorine_52:
            return ChemicalElementDetails(self, neutron_count: 35, standard_atomic_weight: "0", decay_mode: AtomicDecayType.beta_minus, half_life: nil) // TODO: fix
        }
    }
}
