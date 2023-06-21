//
//  AtomicNucleus.swift
//
//  Created by Evan Anderson on 4/4/23.
//

import Foundation
import HugeNumbers

public struct AtomicNucleus : Hashable {
    public var protons:[Proton]
    public var neutrons:[Neutron]
    
    public var proton_count : Int {
        return protons.count
    }
    public var neutron_count : Int {
        return neutrons.count
    }
    
    public var element : ChemicalElement? {
        return ChemicalElement(proton_count: proton_count)
    }
}
