//
//  AtomicDecayType.swift
//
//  Created by Evan Anderson on 4/5/23.
//

import Foundation

// https://en.wikipedia.org/wiki/Particle_radiation | https://en.wikipedia.org/wiki/Radioactive_decay#List_of_decay_modes
public enum AtomicDecayType : Hashable {
    // https://en.wikipedia.org/wiki/Electron_capture
    case electron_capture
    
    // https://en.wikipedia.org/wiki/Proton_emission
    case proton_emission(amount: Int)
    
    // https://en.wikipedia.org/wiki/Neutron_emission
    case neutron_emission(amount: Int)
    
    // https://en.wikipedia.org/wiki/Alpha_decay
    case alpha
    
    // https://en.wikipedia.org/wiki/Beta_decay
    case beta_minus
    case beta_minus_neutron_emission
    case beta_plus
    case beta_plus_proton_emission
    
    // https://en.wikipedia.org/wiki/Gamma_ray
    case gamma
}
