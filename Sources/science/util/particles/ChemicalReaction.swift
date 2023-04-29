//
//  ChemicalReaction.swift
//
//  Created by Evan Anderson on 4/5/23.
//

import Foundation

public struct ChemicalReaction { // TODO: fix terminology
    public var created_protons:[Proton]?
    public var destroyed_protons:[Proton]?
    public var created_antiprotons:[AntiParticle]?
    public var destroyed_antiprotons:[AntiParticle]?
    
    public var created_neutrons:[Neutron]?
    public var destroyed_neutrons:[Neutron]?
    public var created_antineutrons:[AntiParticle]?
    public var destroyed_antineutrons:[AntiParticle]?
    
    public var created_electrons:[Electron]?
    public var destroyed_electrons:[Electron]?
    public var created_antielectrons:[AntiParticle]?
    public var destroyed_antielectrons:[AntiParticle]?
}
