//
//  AntiParticle.swift
//
//  Created by Evan Anderson on 4/5/23.
//

import Foundation

struct AntiParticle : SubatomicParticle {
    let particle_type:ParticleType
    let quarks:[Quark]?
    var mass:MassUnit
    
    init(_ particle: any SubatomicParticle) {
        particle_type = particle.particle_type
        quarks = particle.quarks?.map({ $0.opposite })
        mass = particle.mass as! MassUnit // TODO: fix
    }
}
