//
//  Atom.swift
//
//  Created by Evan Anderson on 4/4/23.
//

import Foundation
import MetalKit

public struct Atom : Hashable {
    public var nucleus:AtomicNucleus
    public var electron_shells:[ElectronShell]
    public let half_life:TimeUnit?
    public var lifetime:ElapsedTime = ElapsedTime()
    public var location:Location
    public var velocity:Velocity
    
    public var electron_count : Int {
        return electron_shells.reduce(0, { $0 + $1.electrons.count })
    }
    
    public var valence_shell : ElectronShell? {
        return electron_shells.last
    }
    public var valence_electrons : [Electron]? {
        return valence_shell?.electrons
    }
    public var is_electrically_stable : Bool {
        return valence_electrons?.count ?? 0 == 8
    }
    
    public var type : AtomType {
        let proton_count:Int = nucleus.proton_count, electron_count:Int = electron_count
        return proton_count == electron_count ? .stable : electron_count > proton_count ? .anion : .cation
    }
    
    public var chemical_element : ChemicalElement? {
        return ChemicalElement.elements[nucleus.proton_count]
    }
    
    public var elementary_charge : Double {
        return nucleus.protons.reduce(0) { $0 + $1.elementary_charge } + electron_shells.reduce(0) { $0 + $1.elementary_charge }
    }
    
    public mutating func collide(_ atom: inout Atom) {
        let atom1_velocity:Velocity = velocity, atom2_velocity:Velocity = atom.velocity
        velocity = -atom2_velocity
        atom.velocity = -atom1_velocity
    }
    
    public var is_unstable : Bool {
        return half_life != nil
    }
    public mutating func decay() -> ChemicalReaction {
        lifetime = ElapsedTime()
        return decay(AtomicDecayType.gamma)
    }
    private mutating func decay(_ type: AtomicDecayType) -> ChemicalReaction {
        let protons:[Proton] = nucleus.protons, neutrons:[Neutron] = nucleus.neutrons
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
        default:
            return ChemicalReaction()
        }
    }
}
