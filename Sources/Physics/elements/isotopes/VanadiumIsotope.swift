//
//  VanadiumIsotope.swift
//  
//
//  Created by Evan Anderson on 5/14/23.
//

import Foundation
import SwiftUnits

// https://en.wikipedia.org/wiki/Isotopes_of_vanadium
public enum VanadiumIsotope : String, ChemicalElementIsotope {
    case vanadium_40
    case vanadium_41
    case vanadium_42
    case vanadium_43
    case vanadium_44
    case vanadium_44_isomer_1
    case vanadium_45
    case vanadium_46
    case vanadium_46_isomer_1
    case vanadium_47
    case vanadium_48
    case vanadium_49
    case vanadium_50
    case vanadium_51
    case vanadium_52
    case vanadium_53
    case vanadium_54
    case vanadium_54_isomer_1
    case vanadium_55
    case vanadium_56
    case vanadium_57
    case vanadium_58
    case vanadium_59
    case vanadium_60
    case vanadium_60_isomer_1
    case vanadium_60_isomer_2
    case vanadium_61
    case vanadium_62
    case vanadium_63
    case vanadium_64
    case vanadium_65
    case vanadium_66
    case vanadium_67
    
    public var element : ChemicalElement {
        return ChemicalElement.vanadium
    }
    
    public var load_details : ChemicalElementDetails {
        switch self {
        case .vanadium_40:
            return ChemicalElementDetails(self, neutrons: 17, standard_atomic_weight: "40.01109", decay_mode: AtomicDecayType.proton_emission(amount: 1), half_life: nil) // TODO: fix
        case .vanadium_41:
            return ChemicalElementDetails(self, neutrons: 18, standard_atomic_weight: "40.99978", decay_mode: AtomicDecayType.proton_emission(amount: 1), half_life: nil) // TODO: fix
        case .vanadium_42:
            return ChemicalElementDetails(self, neutrons: 19, standard_atomic_weight: "41.99123", decay_mode: AtomicDecayType.proton_emission(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "54"))
        case .vanadium_43:
            return ChemicalElementDetails(self, neutrons: 20, standard_atomic_weight: "42.98065", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "80"))
        case .vanadium_44:
            return ChemicalElementDetails(self, neutrons: 21, standard_atomic_weight: "43.97411", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "111"))
        case .vanadium_44_isomer_1:
            return ChemicalElementDetails(self, neutrons: 21, standard_atomic_weight: "43.97411", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "150"))
        case .vanadium_45:
            return ChemicalElementDetails(self, neutrons: 22, standard_atomic_weight: "44.965776", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "547"))
        case .vanadium_46:
            return ChemicalElementDetails(self, neutrons: 23, standard_atomic_weight: "45.9602005", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "422.50"))
        case .vanadium_46_isomer_1:
            return ChemicalElementDetails(self, neutrons: 23, standard_atomic_weight: "45.9602005", decay_mode: AtomicDecayType.isomeric_transition, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "1.02"))
        case .vanadium_47:
            return ChemicalElementDetails(self, neutrons: 24, standard_atomic_weight: "46.9549089", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.minute, value: "32.6"))
        case .vanadium_48:
            return ChemicalElementDetails(self, neutrons: 25, standard_atomic_weight: "47.9522537", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.day, value: "15.9735"))
        case .vanadium_49:
            return ChemicalElementDetails(self, neutrons: 26, standard_atomic_weight: "48.9485161", decay_mode: AtomicDecayType.electron_capture(amount: 1), half_life: TimeUnit(type: TimeUnitType.day, value: "329"))
        case .vanadium_50:
            return ChemicalElementDetails(self, neutrons: 27, standard_atomic_weight: "49.9471585", decay_mode: AtomicDecayType.electron_capture(amount: 1), half_life: TimeUnit(type: TimeUnitType.year, value: "271000000000000000"))
        case .vanadium_51:
            return ChemicalElementDetails(self, neutrons: 28, standard_atomic_weight: "50.9439595") // TODO: fix
        case .vanadium_52:
            return ChemicalElementDetails(self, neutrons: 29, standard_atomic_weight: "51.9447755", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.minute, value: "3.743"))
        case .vanadium_53:
            return ChemicalElementDetails(self, neutrons: 30, standard_atomic_weight: "52.944338", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.minute, value: "1.60"))
        case .vanadium_54:
            return ChemicalElementDetails(self, neutrons: 31, standard_atomic_weight: "53.946440", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "49.8"))
        case .vanadium_54_isomer_1:
            return ChemicalElementDetails(self, neutrons: 31, standard_atomic_weight: "53.946440", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "900")) // TODO: fix
        case .vanadium_55:
            return ChemicalElementDetails(self, neutrons: 32, standard_atomic_weight: "54.94723", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "6.54"))
        case .vanadium_56:
            return ChemicalElementDetails(self, neutrons: 33, standard_atomic_weight: "55.95053", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "216"))
        case .vanadium_57:
            return ChemicalElementDetails(self, neutrons: 34, standard_atomic_weight: "56.95256", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(type: TimeUnitType.second, value: "0.35"))
        case .vanadium_58:
            return ChemicalElementDetails(self, neutrons: 35, standard_atomic_weight: "57.95683", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "191"))
        case .vanadium_59:
            return ChemicalElementDetails(self, neutrons: 36, standard_atomic_weight: "58.96021", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "75"))
        case .vanadium_60:
            return ChemicalElementDetails(self, neutrons: 37, standard_atomic_weight: "59.96503", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "122"))
        case .vanadium_60_isomer_1:
            return ChemicalElementDetails(self, neutrons: 37, standard_atomic_weight: "59.96503", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "40")) // TODO: fix
        case .vanadium_60_isomer_2:
            return ChemicalElementDetails(self, neutrons: 37, standard_atomic_weight: "59.96503", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "401")) // TODO: fix
        case .vanadium_61:
            return ChemicalElementDetails(self, neutrons: 38, standard_atomic_weight: "60.96848", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "47.0"))
        case .vanadium_62:
            return ChemicalElementDetails(self, neutrons: 39, standard_atomic_weight: "61.97378", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "33.5"))
        case .vanadium_63:
            return ChemicalElementDetails(self, neutrons: 40, standard_atomic_weight: "62.97755", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "17"))
        case .vanadium_64:
            return ChemicalElementDetails(self, neutrons: 41, standard_atomic_weight: "63.98347", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "10")) // TODO: fix
        case .vanadium_65:
            return ChemicalElementDetails(self, neutrons: 42, standard_atomic_weight: "64.98792", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "10")) // TODO: fix
        case .vanadium_66:
            return ChemicalElementDetails(self, neutrons: 43, standard_atomic_weight: "65.99324", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "10"))
        case .vanadium_67:
            return ChemicalElementDetails(self, neutrons: 44, standard_atomic_weight: "66.99813", decay_mode: AtomicDecayType.beta_minus(amount: 1), half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "8"))
        }
    }
}
