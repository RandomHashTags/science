//
//  TitaniumIsotope.swift
//  
//
//  Created by Evan Anderson on 5/14/23.
//

import Foundation
import SwiftUnits

// https://en.wikipedia.org/wiki/Isotopes_of_titanium
public enum TitaniumIsotope : String, ChemicalElementIsotope {
    case titanium_39
    case titanium_40
    case titanium_41
    case titanium_42
    case titanium_43
    case titanium_43_isomer_1
    case titanium_43_isomer_2
    case titanium_44
    case titanium_45
    case titanium_46
    case titanium_47
    case titanium_48
    case titanium_49
    case titanium_50
    case titanium_51
    case titanium_52
    case titanium_53
    case titanium_54
    case titanium_55
    case titanium_56
    case titanium_57
    case titanium_58
    case titanium_59
    case titanium_60
    case titanium_61
    case titanium_62
    case titanium_63
    case titanium_64
    
    public var element : ChemicalElement {
        return ChemicalElement.titanium
    }
    
    public var load_details : ChemicalElementDetails {
        switch self {
        case .titanium_39:
            return ChemicalElementDetails(self, neutron_count: 17, standard_atomic_weight: "39.00161", decay_mode: AtomicDecayType.beta_plus_proton_emission, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "31"))
        case .titanium_40:
            return ChemicalElementDetails(self, neutron_count: 18, standard_atomic_weight: "39.99050", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "53.3"))
        case .titanium_41:
            return ChemicalElementDetails(self, neutron_count: 19, standard_atomic_weight: "40.98315", decay_mode: AtomicDecayType.beta_plus_proton_emission, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "80.4"))
        case .titanium_42:
            return ChemicalElementDetails(self, neutron_count: 20, standard_atomic_weight: "41.973031", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "199"))
        case .titanium_43:
            return ChemicalElementDetails(self, neutron_count: 21, standard_atomic_weight: "42.968522", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "509"))
        case .titanium_43_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 21, standard_atomic_weight: "42.968522", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "12.6")) // TODO: fix
        case .titanium_43_isomer_2:
            return ChemicalElementDetails(self, neutron_count: 21, standard_atomic_weight: "42.968522", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "560")) // TODO: fix
        case .titanium_44:
            return ChemicalElementDetails(self, neutron_count: 22, standard_atomic_weight: "43.9596901", decay_mode: AtomicDecayType.electron_capture(amount: 1), half_life: TimeUnit(type: TimeUnitType.year, value: "60.0"))
        case .titanium_45:
            return ChemicalElementDetails(self, neutron_count: 23, standard_atomic_weight: "44.9581256", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.minute, value: "184.8"))
        case .titanium_46:
            return ChemicalElementDetails(self, neutron_count: 24, standard_atomic_weight: "45.9526316")
        case .titanium_47:
            return ChemicalElementDetails(self, neutron_count: 25, standard_atomic_weight: "46.9517631")
        case .titanium_48:
            return ChemicalElementDetails(self, neutron_count: 26, standard_atomic_weight: "47.9479463")
        case .titanium_49:
            return ChemicalElementDetails(self, neutron_count: 27, standard_atomic_weight: "48.9478700")
        case .titanium_50:
            return ChemicalElementDetails(self, neutron_count: 28, standard_atomic_weight: "49.9447912")
        case .titanium_51:
            return ChemicalElementDetails(self, neutron_count: 29, standard_atomic_weight: "50.946615", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.minute, value: "5.76"))
        case .titanium_52:
            return ChemicalElementDetails(self, neutron_count: 30, standard_atomic_weight: "51.946897", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.minute, value: "1.7"))
        case .titanium_53:
            return ChemicalElementDetails(self, neutron_count: 31, standard_atomic_weight: "52.94973", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "32.7"))
        case .titanium_54:
            return ChemicalElementDetails(self, neutron_count: 32, standard_atomic_weight: "53.95105", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "1.5"))
        case .titanium_55:
            return ChemicalElementDetails(self, neutron_count: 33, standard_atomic_weight: "54.95527", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "490"))
        case .titanium_56:
            return ChemicalElementDetails(self, neutron_count: 34, standard_atomic_weight: "55.95820", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "164"))
        case .titanium_57:
            return ChemicalElementDetails(self, neutron_count: 35, standard_atomic_weight: "56.96399", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "60"))
        case .titanium_58:
            return ChemicalElementDetails(self, neutron_count: 36, standard_atomic_weight: "57.96697", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "54"))
        case .titanium_59:
            return ChemicalElementDetails(self, neutron_count: 37, standard_atomic_weight: "58.97293", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "30"))
        case .titanium_60:
            return ChemicalElementDetails(self, neutron_count: 38, standard_atomic_weight: "59.97676", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "22"))
        case .titanium_61:
            return ChemicalElementDetails(self, neutron_count: 39, standard_atomic_weight: "60.98320", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "10"))
        case .titanium_62:
            return ChemicalElementDetails(self, neutron_count: 40, standard_atomic_weight: "61.98749", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "10")) // TODO: fix
        case .titanium_63:
            return ChemicalElementDetails(self, neutron_count: 41, standard_atomic_weight: "62.99442", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "3")) // TODO: fix
        case .titanium_64:
            return ChemicalElementDetails(self, neutron_count: 42, standard_atomic_weight: "63.998410", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "5")) // TODO: fix
        }
    }
}
