//
//  Neutron.swift
//
//  Created by Evan Anderson on 4/4/23.
//

import Foundation
import HugeNumbers
import SwiftUnits

public struct Neutron : SubatomicParticle {
    public let particle_type:ParticleType = ParticleType.elementary
    public let quarks:[Quark]? = [Quark.up, Quark.down, Quark.down]
    public var mass:MassUnit = MassUnit(prefix: UnitPrefix.kilo, type: MassUnitType.gram, value: HugeFloat("0.00000000000000000000000000167492749804"))
}
