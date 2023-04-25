//
//  AtomicNucleus.swift
//
//  Created by Evan Anderson on 4/4/23.
//

import Foundation

struct AtomicNucleus : Hashable {
    var protons:[Proton]
    var neutrons:[Neutron]
    
    var proton_count : Int {
        return protons.count
    }
    var neutron_count : Int {
        return neutrons.count
    }
    
    var element : ChemicalElement? {
        return ChemicalElement.elements[proton_count]
    }
}
