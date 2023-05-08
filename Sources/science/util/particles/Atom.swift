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
    public var decay_mode:AtomicDecayType?, half_life:TimeUnit?
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
        return nucleus.element
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
    public mutating func decay() -> [ChemicalReaction]? {
        // TODO: support probability of decaying (half-life=50% chance of it decaying within the half-life)
        guard decay_mode != nil && half_life != nil && lifetime >= half_life! else { return nil }
        var reactions:[ChemicalReaction] = []
        while let decay_mode:AtomicDecayType = decay_mode, let half_life:TimeUnit = half_life, lifetime >= half_life {
            lifetime -= half_life
            
            let reaction:ChemicalReaction = decay(decay_mode)
            let chemical_element:ChemicalElement = chemical_element!
            let element_identifier:String = chemical_element.rawValue
            let target_number:Int = nucleus.proton_count + nucleus.neutron_count
            let new_element:ChemicalElementDetails! = ChemicalElementDetails.value_of(identifier: element_identifier + "_" + target_number.description) ?? ChemicalElementDetails.value_of(identifier: element_identifier)
            self.decay_mode = new_element.decay_mode
            self.half_life = new_element.half_life
            reactions.append(reaction)
        }
        print("Atom;decay;finally decayed into " + chemical_element!.rawValue + ";new_decay_mode=\(decay_mode);new_half_life=\(half_life?.description)")
        return reactions
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
            // TODO: emit electron/positron and electron antineutrino
            return ChemicalReaction(created_protons: [created_proton], destroyed_neutrons: [destroyed_neutron], created_electrons: [created_electron], created_antielectrons: [AntiParticle(created_electron)])
        case .beta_minus_neutron_emission:
            let created_proton:Proton = Proton()
            let destroyed_neutron:Neutron = neutrons[0]
            let created_electron:Electron = Electron()
            nucleus.protons.append(created_proton)
            nucleus.neutrons.removeFirst(2)
            // TODO: emit electron/positron and electron antineutrino
            return ChemicalReaction(created_protons: [created_proton], destroyed_neutrons: [destroyed_neutron], created_electrons: [created_electron], created_antielectrons: [AntiParticle(created_electron)], emitted_neutrons: [neutrons[1]])
            
        case .beta_plus:
            let created_neutron:Neutron = Neutron()
            nucleus.protons.removeFirst()
            nucleus.neutrons.append(created_neutron)
            return ChemicalReaction(destroyed_protons: [protons[0]], created_neutrons: [created_neutron], created_antielectrons: [AntiParticle(Electron())])
        case .beta_plus_proton_emission:
            let created_neutron:Neutron = Neutron()
            nucleus.protons.removeFirst(2)
            nucleus.neutrons.append(created_neutron)
            return ChemicalReaction(destroyed_protons: [protons[0]], created_neutrons: [created_neutron], created_antielectrons: [AntiParticle(Electron())], emitted_protons: [protons[1]])
            
        case .gamma:
            // TODO: emit gamma ray photon
            return ChemicalReaction()
            
        case .proton_emission(let amount):
            nucleus.protons.removeFirst(amount)
            return ChemicalReaction(emitted_protons: Array(protons[0..<amount]))
            
        case .neutron_emission(let amount):
            nucleus.neutrons.removeFirst(amount)
            return ChemicalReaction(emitted_neutrons: Array(neutrons[0..<amount]))
            
        case .electron_capture:
            // TODO: fix
            return ChemicalReaction()
        }
    }
}
