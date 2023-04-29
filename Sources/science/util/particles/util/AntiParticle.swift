//
//  AntiParticle.swift
//
//  Created by Evan Anderson on 4/5/23.
//

import Foundation

public struct AntiParticle : SubatomicParticle {
    public let particle_type:ParticleType
    public let quarks:[Quark]?
    public var mass:MassUnit
    
    public init(_ particle: any SubatomicParticle) {
        particle_type = particle.particle_type
        quarks = particle.quarks?.map({ $0.opposite })
        mass = particle.mass as! MassUnit // TODO: fix
    }
}
