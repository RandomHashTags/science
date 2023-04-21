//
//  ElementaryParticle.swift
//
//  Created by Evan Anderson on 4/4/23.
//

import Foundation

protocol ElementaryParticle : SubatomicParticle {
}
extension ElementaryParticle {
    var particle_type : ParticleType {
        return ParticleType.elementary
    }
    var quarks : [Quark]? {
        return nil
    }
}
