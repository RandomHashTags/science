//
//  ChemicalElementProtocol.swift
//  
//
//  Created by Evan Anderson on 5/7/23.
//

import Foundation

// TODO: support uncertainty
public protocol ChemicalElementProtocol : Hashable {
    var atomic_number : Int { get }
    var neutron_count : Int? { get }
    var symbol : String { get }
    /// Masured in Dalton
    var standard_atomic_weight : Float { get }
    /// if known, predicted/known density of this chemical element, measured in grams per cubic centimetre
    var density : DensityUnit? { get }
    /// if known, melting point of this chemical element, measured in degrees Kelvin
    var melting_point : TemperatureUnit? { get }
    /// if known, boiling point of this chemical element, measured in degrees Kelvin
    var boiling_point : TemperatureUnit? { get }
    
    // TODO: decay mode probabilities
    var decay_mode : AtomicDecayType? { get }
    var half_life : TimeUnit? { get }
}
