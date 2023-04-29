//
//  SubatomicParticle.swift
//
//  Created by Evan Anderson on 4/4/23.
//

import Foundation

public protocol SubatomicParticle : Hashable {
    associatedtype TargetMassUnit : Unit = MassUnit
    
    var particle_type : ParticleType { get }
    var quarks : [Quark]? { get }
    /// The electric charge carried by a single proton.
    var elementary_charge : Double { get }
    var mass : TargetMassUnit { get set }
}
public extension SubatomicParticle {
    var elementary_charge : Double {
        return quarks?.reduce(0) { $0 + $1.elementary_charge } ?? 0
    }
}
