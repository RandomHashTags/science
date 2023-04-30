//
//  AtomicNucleus.swift
//
//  Created by Evan Anderson on 4/4/23.
//

import Foundation
import huge_numbers

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
        return ChemicalElement.elements[proton_count]
    }
    
    public var is_unstable : Bool {
        return proton_count != neutron_count
    }
    public func try_decaying() -> ChemicalReaction? {
        guard is_unstable else { return nil }
        return decay()
    }
    private func decay() -> ChemicalReaction? {
        return nil
    }
    private func decay(_ type: AtomicDecayType) -> ChemicalReaction {
        switch type {
        case .alpha:
            return ChemicalReaction(destroyed_protons: [protons[0], protons[1]], destroyed_neutrons: [neutrons[0], neutrons[1]])
        case .beta_minus:
            let electron:Electron = Electron()
            return ChemicalReaction(created_protons: [Proton()], destroyed_neutrons: [neutrons[0]], created_electrons: [electron], created_antielectrons: [AntiParticle(electron)])
        case .beta_plus:
            return ChemicalReaction(destroyed_protons: [protons[0]], created_neutrons: [Neutron()], created_antielectrons: [AntiParticle(Electron())])
        case .gamma:
            return ChemicalReaction()
        }
    }
}
