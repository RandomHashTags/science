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
    public var half_life:TimeUnit?
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
        return ChemicalElement.value_of(proton_count: nucleus.proton_count, neutron_count: nucleus.neutron_count)
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
        print("Atom;decay;element=\(chemical_element?.symbol), lifetime=\(lifetime.description)")
        lifetime = ElapsedTime()
        let reaction:ChemicalReaction = decay(AtomicDecayType.alpha)
        half_life = chemical_element?.half_life
        return reaction
    }
    private mutating func decay(_ type: AtomicDecayType) -> ChemicalReaction {
        let protons:[Proton] = nucleus.protons, neutrons:[Neutron] = nucleus.neutrons
        switch type {
        case .alpha:
            nucleus.protons.removeFirst(2)
            nucleus.neutrons.removeFirst(2)
            return ChemicalReaction(destroyed_protons: [protons[0], protons[1]], destroyed_neutrons: [neutrons[0], neutrons[1]])
        case .beta_minus:
            let created_proton:Proton = Proton()
            let destroyed_neutron:Neutron = neutrons[0]
            let created_electron:Electron = Electron()
            nucleus.protons.append(created_proton)
            nucleus.neutrons.removeFirst()
            // TODO: gain electron
            return ChemicalReaction(created_protons: [created_proton], destroyed_neutrons: [destroyed_neutron], created_electrons: [created_electron], created_antielectrons: [AntiParticle(created_electron)])
        case .beta_plus:
            let created_neutron:Neutron = Neutron()
            nucleus.protons.removeFirst()
            nucleus.neutrons.append(created_neutron)
            return ChemicalReaction(destroyed_protons: [protons[0]], created_neutrons: [created_neutron], created_antielectrons: [AntiParticle(Electron())])
        case .gamma:
            return ChemicalReaction()
        default:
            return ChemicalReaction()
        }
    }
}
