//
//  ChemicalReaction.swift
//
//  Created by Evan Anderson on 4/5/23.
//

import Foundation

struct ChemicalReaction {
    var created_protons:[Proton]?
    var destroyed_protons:[Proton]?
    var created_antiprotons:[AntiParticle]?
    var destroyed_antiprotons:[AntiParticle]?
    
    var created_neutrons:[Neutron]?
    var destroyed_neutrons:[Neutron]?
    var created_antineutrons:[AntiParticle]?
    var destroyed_antineutrons:[AntiParticle]?
    
    var created_electrons:[Electron]?
    var destroyed_electrons:[Electron]?
    var created_antielectrons:[AntiParticle]?
    var destroyed_antielectrons:[AntiParticle]?
}
