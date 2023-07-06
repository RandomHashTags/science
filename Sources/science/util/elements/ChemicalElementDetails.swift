//
//  ChemicalElementDetails.swift
//  
//
//  Created by Evan Anderson on 5/7/23.
//

import Foundation
import HugeNumbers
import SwiftUnits

public final class ChemicalElementDetails : ChemicalElementProtocol { // TODO: evolve to noncopyable struct when available (https://github.com/apple/swift-evolution/blob/main/proposals/0390-noncopyable-structs-and-enums.md)
    public static func == (lhs: ChemicalElementDetails, rhs: ChemicalElementDetails) -> Bool {
        return lhs.atomic_number == rhs.atomic_number && lhs.neutron_count == rhs.neutron_count && lhs.standard_atomic_weight == rhs.standard_atomic_weight
    }
    
    private static var cached:[String:ChemicalElementDetails] = [:]
    public static func value_of(identifier: String) -> ChemicalElementDetails? {
        if let details:ChemicalElementDetails = cached[identifier] {
            return details
        }
        let values:[Substring] = identifier.split(separator: "_")
        let key:String = String(values[0])
        switch values.count {
        case 1:
            guard let element:ChemicalElement = ChemicalElement(rawValue: key) else { return nil }
            return element.load_details
        default:
            guard let element:ChemicalElement = ChemicalElement(rawValue: key),
                  let isotope:any ChemicalElementIsotope = element.isotope_type?.init(rawValue: identifier) else {
                return nil
            }
            return isotope.load_details
        }
    }
        
    public let atomic_number:Int, neutron_count:Int?
    public let symbol:String
    public let standard_atomic_weight:MassUnit
    /// Measured in pictometres (https://en.wikipedia.org/wiki/Atomic_radius)
    public let atomic_radius:UInt16
    /// if known, predicted/known density of this chemical element, measured in grams per cubic centimetre
    public let density:DensityUnit?
    /// if known, melting point of this chemical element, measured in degrees Kelvin
    public let melting_point:TemperatureUnit?
    /// if known, boiling point of this chemical element, measured in degrees Kelvin
    public let boiling_point:TemperatureUnit?
    
    // TODO: decay mode probabilities
    public let decay_mode:AtomicDecayType?
    public let half_life:TimeUnit?
    public let decays_into_isomer:Int?
    
    public let isotopes:(any ChemicalElementIsotope).Type?
    
    public init(identifier: String, atomic_number: Int, neutron_count: Int? = nil, symbol: String, standard_atomic_weight: String, atomic_radius: UInt16, density: String?, melting_point: String?, boiling_point: String? = nil, decay_mode: AtomicDecayType? = nil, half_life: TimeUnit? = nil, decays_into_isomer: Int? = nil, isotopes: (any ChemicalElementIsotope).Type? = nil) {
        self.atomic_number = atomic_number
        self.neutron_count = neutron_count
        self.symbol = symbol
        self.standard_atomic_weight = MassUnit(type: MassUnitType.dalton, value: standard_atomic_weight)
        self.atomic_radius = atomic_radius
        self.density = density != nil ? DensityUnit(type: DensityUnitType.gram_per_cubic_centimetre, value: HugeFloat(density!)) : nil
        //self.freezing_point = TemperatureUnit(type: TemperatureUnitType.kelvin, value: HugeFloat(freezing_point))
        self.melting_point = melting_point != nil ? TemperatureUnit(type: TemperatureUnitType.kelvin, value: HugeFloat(melting_point!)) : nil
        self.boiling_point = boiling_point != nil ? TemperatureUnit(type: TemperatureUnitType.kelvin, value: HugeFloat(boiling_point!)) : nil
        self.decay_mode = decay_mode
        self.half_life = half_life
        self.decays_into_isomer = decays_into_isomer
        self.isotopes = isotopes
        ChemicalElementDetails.cached[identifier] = self
    }
    public convenience init(_ isotope: any ChemicalElementIsotope, neutron_count: Int, standard_atomic_weight: String, density: String? = nil, melting_point: String? = nil, boiling_point: String? = nil, decay_mode: AtomicDecayType? = nil, half_life: TimeUnit? = nil, decays_into_isomer: Int? = nil) {
        let element:ChemicalElementDetails = ChemicalElementDetails.value_of(identifier: isotope.element.rawValue)!
        self.init(identifier: isotope.rawValue, atomic_number: element.atomic_number, neutron_count: neutron_count, symbol: element.symbol, standard_atomic_weight: standard_atomic_weight, atomic_radius: element.atomic_radius, density: density, melting_point: melting_point, boiling_point: boiling_point, decay_mode: decay_mode, half_life: half_life, decays_into_isomer: decays_into_isomer)
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(atomic_number)
        hasher.combine(neutron_count)
        hasher.combine(standard_atomic_weight)
    }
    
    public lazy var atom : Atom = {
        let protons:[Proton] = [Proton].init(repeating: Proton(), count: atomic_number)
        let neutrons:[Neutron]
        if let neutron_count:Int = neutron_count {
            neutrons = [Neutron].init(repeating: Neutron(), count: neutron_count)
        } else {
            let weight:Int = Int(standard_atomic_weight.value.represented_float)
            neutrons = [Neutron].init(repeating: Neutron(), count: weight - atomic_number)
        }
        let electron_shells:[ElectronShell] = ElectronShell.collect(electron_count: atomic_number)
        return Atom(nucleus: AtomicNucleus(protons: protons, neutrons: neutrons), electron_shells: electron_shells, decay_mode: decay_mode, half_life: half_life, decays_into_isomer: decays_into_isomer)
    }()
}
