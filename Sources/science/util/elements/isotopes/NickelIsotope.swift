//
//  NickelIsotope.swift
//  
//
//  Created by Evan Anderson on 5/16/23.
//

import Foundation

public enum NickelIsotope : String, ChemicalElementIsotope {
    case nickel_48
    case nickel_49
    case nickel_50
    case nickel_51
    case nickel_52
    case nickel_53
    case nickel_54
    case nickel_55
    case nickel_56
    case nickel_57
    case nickel_58
    case nickel_59
    case nickel_60
    case nickel_61
    case nickel_62
    case nickel_63
    case nickel_63_isomer_1
    case nickel_64
    case nickel_65
    case nickel_65_isomer_1
    case nickel_66
    case nickel_67
    case nickel_67_isomer_1
    case nickel_68
    case nickel_68_isomer_1
    case nickel_68_isomer_2
    case nickel_69
    case nickel_69_isomer_1
    case nickel_69_isomer_2
    case nickel_70
    case nickel_70_isomer_1
    case nickel_71
    case nickel_72
    case nickel_73
    case nickel_74
    case nickel_75
    case nickel_76
    case nickel_77
    case nickel_78
    case nickel_79
    case nickel_80
    
    public var element : ChemicalElement {
        return ChemicalElement.nickel
    }
    
    public var load_details : ChemicalElementDetails {
        switch self {
        case .nickel_48:
            return ChemicalElementDetails(self, neutron_count: 20, standard_atomic_weight: "48.01975", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "10")) // TODO: fix
        case .nickel_49:
            return ChemicalElementDetails(self, neutron_count: 21, standard_atomic_weight: "49.00966", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "13")) // TODO: fix
        case .nickel_50:
            return ChemicalElementDetails(self, neutron_count: 22, standard_atomic_weight: "49.99593", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "9.1"))
        case .nickel_51:
            return ChemicalElementDetails(self, neutron_count: 23, standard_atomic_weight: "50.98772", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "30"))
        case .nickel_52:
            return ChemicalElementDetails(self, neutron_count: 24, standard_atomic_weight: "51.97568", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "38"))
        case .nickel_53:
            return ChemicalElementDetails(self, neutron_count: 25, standard_atomic_weight: "52.96847", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "45"))
        case .nickel_54:
            return ChemicalElementDetails(self, neutron_count: 26, standard_atomic_weight: "53.95791", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "104"))
        case .nickel_55:
            return ChemicalElementDetails(self, neutron_count: 27, standard_atomic_weight: "54.951330", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "204.7"))
        case .nickel_56:
            return ChemicalElementDetails(self, neutron_count: 28, standard_atomic_weight: "55.942132", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.day, value: "6.075"))
        case .nickel_57:
            return ChemicalElementDetails(self, neutron_count: 29, standard_atomic_weight: "56.9397935", decay_mode: AtomicDecayType.beta_plus, half_life: TimeUnit(type: TimeUnitType.hour, value: "35.60"))
        case .nickel_58:
            return ChemicalElementDetails(self, neutron_count: 30, standard_atomic_weight: "57.9353429")
        case .nickel_59:
            return ChemicalElementDetails(self, neutron_count: 31, standard_atomic_weight: "58.9343467", decay_mode: AtomicDecayType.electron_capture, half_life: TimeUnit(type: TimeUnitType.year, value: "76000"))
        case .nickel_60:
            return ChemicalElementDetails(self, neutron_count: 32, standard_atomic_weight: "59.9307864")
        case .nickel_61:
            return ChemicalElementDetails(self, neutron_count: 33, standard_atomic_weight: "60.9310560")
        case .nickel_62:
            return ChemicalElementDetails(self, neutron_count: 34, standard_atomic_weight: "61.9283451")
        case .nickel_63:
            return ChemicalElementDetails(self, neutron_count: 35, standard_atomic_weight: "62.9296694", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.year, value: "100.1"))
        case .nickel_63_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 35, standard_atomic_weight: "62.9296694", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "1.67")) // TODO: fix
        case .nickel_64:
            return ChemicalElementDetails(self, neutron_count: 36, standard_atomic_weight: "63.9279660")
        case .nickel_65:
            return ChemicalElementDetails(self, neutron_count: 37, standard_atomic_weight: "64.9300843", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.hour, value: "2.5172"))
        case .nickel_65_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 37, standard_atomic_weight: "64.9300843", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "69")) // TODO: fix
        case .nickel_66:
            return ChemicalElementDetails(self, neutron_count: 38, standard_atomic_weight: "65.9291393", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.hour, value: "54.6"))
        case .nickel_67:
            return ChemicalElementDetails(self, neutron_count: 39, standard_atomic_weight: "66.931569", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.second, value: "21"))
        case .nickel_67_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 39, standard_atomic_weight: "66.931569", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "13.3"))
        case .nickel_68:
            return ChemicalElementDetails(self, neutron_count: 40, standard_atomic_weight: "67.931869", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.second, value: "29"))
        case .nickel_68_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 40, standard_atomic_weight: "67.931869", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "276")) // TODO: fix
        case .nickel_68_isomer_2:
            return ChemicalElementDetails(self, neutron_count: 40, standard_atomic_weight: "67.931869", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: "860")) // TODO: fix
        case .nickel_69:
            return ChemicalElementDetails(self, neutron_count: 41, standard_atomic_weight: "68.935610", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.second, value: "11.5"))
        case .nickel_69_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 41, standard_atomic_weight: "68.935610", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.second, value: "3.5"))
        case .nickel_69_isomer_2:
            return ChemicalElementDetails(self, neutron_count: 41, standard_atomic_weight: "68.935610", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "439")) // TODO: fix
        case .nickel_70:
            return ChemicalElementDetails(self, neutron_count: 42, standard_atomic_weight: "69.93650", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.second, value: "6.0"))
        case .nickel_70_isomer_1:
            return ChemicalElementDetails(self, neutron_count: 42, standard_atomic_weight: "69.93650", decay_mode: nil, half_life: TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "232")) // TODO: fix
        case .nickel_71:
            return ChemicalElementDetails(self, neutron_count: 43, standard_atomic_weight: "70.94074", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.second, value: "2.56"))
        case .nickel_72:
            return ChemicalElementDetails(self, neutron_count: 44, standard_atomic_weight: "71.94209", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.second, value: "1.57"))
        case .nickel_73:
            return ChemicalElementDetails(self, neutron_count: 45, standard_atomic_weight: "72.94647", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.second, value: "0.84"))
        case .nickel_74:
            return ChemicalElementDetails(self, neutron_count: 46, standard_atomic_weight: "73.94807", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.second, value: "0.68"))
        case .nickel_75:
            return ChemicalElementDetails(self, neutron_count: 47, standard_atomic_weight: "74.95287", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.second, value: "0.6"))
        case .nickel_76:
            return ChemicalElementDetails(self, neutron_count: 48, standard_atomic_weight: "75.95533", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(type: TimeUnitType.second, value: "470"))
        case .nickel_77:
            return ChemicalElementDetails(self, neutron_count: 49, standard_atomic_weight: "76.96055", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "300"))
        case .nickel_78:
            return ChemicalElementDetails(self, neutron_count: 50, standard_atomic_weight: "77.96318", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "120"))
        case .nickel_79:
            return ChemicalElementDetails(self, neutron_count: 51, standard_atomic_weight: "78.970400", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "43.0"))
        case .nickel_80:
            return ChemicalElementDetails(self, neutron_count: 52, standard_atomic_weight: "78.970400", decay_mode: AtomicDecayType.beta_minus, half_life: TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: "24"))
        }
    }
}
