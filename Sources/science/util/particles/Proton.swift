//
//  Proton.swift
//
//  Created by Evan Anderson on 4/4/23.
//

import Foundation
import huge_numbers
import MetalKit

struct Proton : SubatomicParticle {
    let particle_type:ParticleType = ParticleType.composite
    let quarks:[Quark]? = [Quark.up, Quark.up, Quark.down]
    var mass:MassUnit = MassUnit(prefix: UnitPrefix.kilo, type: MassUnitType.gram, value: HugeFloat("0.00000000000000000000000000167262192369"))
    
    func get_mesh(allocator: MDLMeshBufferAllocator) -> MDLMesh {
        return MDLMesh.newEllipsoid(withRadii: SIMD3<Float>(4, 4, 4), radialSegments: 10, verticalSegments: 10, geometryType: MDLGeometryType.triangles, inwardNormals: false, hemisphere: false, allocator: allocator)
    }
}