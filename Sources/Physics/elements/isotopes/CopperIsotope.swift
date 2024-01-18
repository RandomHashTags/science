//
//  CopperIsotope.swift
//  
//
//  Created by Evan Anderson on 5/16/23.
//

import Foundation
import SwiftUnits

// https://en.wikipedia.org/wiki/Isotopes_of_copper
public enum CopperIsotope : String, ChemicalElementIsotope {
    case copper_52
    case copper_53
    case copper_54
    case copper_55
    case copper_56
    case copper_57
    case copper_58
    case copper_59
    case copper_60
    case copper_61
    case copper_62
    case copper_63
    case copper_64
    case copper_65
    case copper_66
    case copper_67
    case copper_68
    case copper_68_isomer_1
    case copper_69
    case copper_69_isomer_1
    case copper_70
    case copper_70_isomer_1
    case copper_70_isomer_2
    case copper_71
    case copper_71_isomer_1
    case copper_72
    case copper_72_isomer_1
    case copper_73
    case copper_74
    case copper_75
    case copper_76
    case copper_76_isomer_1
    case copper_77
    case copper_78
    case copper_79
    case copper_80
    
    public var element : ChemicalElement {
        return ChemicalElement.copper
    }
    
    public var load_details : ChemicalElementDetails {
        switch self {
        case .copper_52:
            return ChemicalElementDetails(self, neutrons: 23, standard_atomic_weight: "51.99718", decay_mode: AtomicDecayType.proton_emission(amount: 1), half_life: nil) // TODO: fix
        case .copper_53:
            return ChemicalElementDetails(self, neutrons: 24, standard_atomic_weight: "52.98555", decay_mode: AtomicDecayType.proton_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "299"))
        case .copper_54:
            return ChemicalElementDetails(self, neutrons: 25, standard_atomic_weight: "53.97671", decay_mode: AtomicDecayType.proton_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "74"))
        case .copper_55:
            return ChemicalElementDetails(self, neutrons: 26, standard_atomic_weight: "54.96605", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "40"))
        case .copper_56:
            return ChemicalElementDetails(self, neutrons: 27, standard_atomic_weight: "55.95856", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "93"))
        case .copper_57:
            return ChemicalElementDetails(self, neutrons: 28, standard_atomic_weight: "56.949211", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "196.3"))
        case .copper_58:
            return ChemicalElementDetails(self, neutrons: 29, standard_atomic_weight: "57.9445385", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "3.204"))
        case .copper_59:
            return ChemicalElementDetails(self, neutrons: 30, standard_atomic_weight: "58.9394980", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.second, value: "81.5"))
        case .copper_60:
            return ChemicalElementDetails(self, neutrons: 31, standard_atomic_weight: "59.9373650", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.minute, value: "23.7"))
        case .copper_61:
            return ChemicalElementDetails(self, neutrons: 32, standard_atomic_weight: "60.9334578", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.hour, value: "3.333"))
        case .copper_62:
            return ChemicalElementDetails(self, neutrons: 33, standard_atomic_weight: "61.932584", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.minute, value: "9.673"))
        case .copper_63:
            return ChemicalElementDetails(self, neutrons: 34, standard_atomic_weight: "62.9295975")
        case .copper_64:
            return ChemicalElementDetails(self, neutrons: 35, standard_atomic_weight: "63.9297642", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.hour, value: "12.700"))
        case .copper_65:
            return ChemicalElementDetails(self, neutrons: 36, standard_atomic_weight: "64.9277895")
        case .copper_66:
            return ChemicalElementDetails(self, neutrons: 37, standard_atomic_weight: "65.9288688", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.minute, value: "5.120"))
        case .copper_67:
            return ChemicalElementDetails(self, neutrons: 38, standard_atomic_weight: "66.9277303", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.hour, value: "61.83"))
        case .copper_68:
            return ChemicalElementDetails(self, neutrons: 39, standard_atomic_weight: "67.9296109", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "31.1"))
        case .copper_68_isomer_1:
            return ChemicalElementDetails(self, neutrons: 39, standard_atomic_weight: "67.9296109", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(type: TimeUnitType.minute, value: "3.75"))
        case .copper_69:
            return ChemicalElementDetails(self, neutrons: 40, standard_atomic_weight: "68.9294293", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.minute, value: "2.85"))
        case .copper_69_isomer_1:
            return ChemicalElementDetails(self, neutrons: 40, standard_atomic_weight: "68.9294293", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "360")) // TODO: fix
        case .copper_70:
            return ChemicalElementDetails(self, neutrons: 41, standard_atomic_weight: "69.9323923", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "44.5"))
        case .copper_70_isomer_1:
            return ChemicalElementDetails(self, neutrons: 41, standard_atomic_weight: "69.9323923", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "33"))
        case .copper_70_isomer_2:
            return ChemicalElementDetails(self, neutrons: 41, standard_atomic_weight: "69.9323923", decay_mode: nil, half_life: TimeUnit(type: TimeUnitType.second, value: "6.6")) // TODO: fix
        case .copper_71:
            return ChemicalElementDetails(self, neutrons: 42, standard_atomic_weight: "70.9326768", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "19.4"))
        case .copper_71_isomer_1:
            return ChemicalElementDetails(self, neutrons: 42, standard_atomic_weight: "70.9326768", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "271")) // TODO: fix
        case .copper_72:
            return ChemicalElementDetails(self, neutrons: 43, standard_atomic_weight: "71.9358203", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "6.6"))
        case .copper_72_isomer_1:
            return ChemicalElementDetails(self, neutrons: 43, standard_atomic_weight: "71.9358203", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "1.76")) // TODO: fix
        case .copper_73:
            return ChemicalElementDetails(self, neutrons: 44, standard_atomic_weight: "72.936675", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "4.2"))
        case .copper_74:
            return ChemicalElementDetails(self, neutrons: 45, standard_atomic_weight: "73.939875", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "1.594"))
        case .copper_75:
            return ChemicalElementDetails(self, neutrons: 46, standard_atomic_weight: "74.94190", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "1.224"))
        case .copper_76:
            return ChemicalElementDetails(self, neutrons: 47, standard_atomic_weight: "75.945275", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "641"))
        case .copper_76_isomer_1:
            return ChemicalElementDetails(self, neutrons: 47, standard_atomic_weight: "75.945275", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "1.27"))
        case .copper_77:
            return ChemicalElementDetails(self, neutrons: 48, standard_atomic_weight: "76.94785", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "469"))
        case .copper_78:
            return ChemicalElementDetails(self, neutrons: 49, standard_atomic_weight: "77.95196", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "342"))
        case .copper_79:
            return ChemicalElementDetails(self, neutrons: 50, standard_atomic_weight: "78.95456", decay_mode: AtomicDecayType.beta_minus_neutron_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "188"))
        case .copper_80:
            return ChemicalElementDetails(self, neutrons: 51, standard_atomic_weight: "79.96087", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "100"))
        }
    }
}
