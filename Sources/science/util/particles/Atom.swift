//
//  Atom.swift
//
//  Created by Evan Anderson on 4/4/23.
//

import Foundation
import MetalKit
import huge_numbers

public struct Atom : Hashable {
    public var nucleus:AtomicNucleus
    public var electron_shells:[ElectronShell]
    public var decay_mode:AtomicDecayType?, half_life:TimeUnit?, decays_into_isomer:Int?
    public var lifetime_total:ElapsedTime = ElapsedTime()
    public var elapsed_time_since_last_decay:ElapsedTime = ElapsedTime()
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
        return decay_mode != nil || half_life != nil
    }
    public mutating func decay() -> [ChemicalReaction]? {
        // TODO: support probability of decaying (half-life=50% chance of it decaying within the half-life)
        guard decay_mode != nil && half_life != nil && elapsed_time_since_last_decay >= half_life! else { return nil }
        var reactions:[ChemicalReaction] = []
        
        var status:Bool = true
        while status {
            let (decayed, reaction):(Bool, ChemicalReaction?) = try_decaying()
            if let reaction:ChemicalReaction = reaction {
                reactions.append(reaction)
            }
            status = decayed
        }
        return reactions
    }
    /// - Returns: Whether or not this atom has decayed, if so, also the chemical reaction of the decay.
    private mutating func try_decaying() -> (Bool, ChemicalReaction?) {
        let test:TimeUnit = elapsed_time_since_last_decay.to_unit(unit_prefix: half_life!.prefix, unit_type: half_life!.type)
        let iterations:UInt64 = test.value.divide_by(half_life!.value, precision: HugeInt.float_precision).integer.to_int()!
        for i in 0..<iterations {
            elapsed_time_since_last_decay -= half_life!
            if Bool.random() {
                let original_element:ChemicalElement = chemical_element!
                let original_target_number:Int = nucleus.proton_count + nucleus.neutron_count
                let reaction:ChemicalReaction = decay(decay_mode!)
                let chemical_element:ChemicalElement = chemical_element!
                let element_identifier:String = chemical_element.rawValue
                let target_number:Int = nucleus.proton_count + nucleus.neutron_count
                let decayed_to_element_identifier:String = element_identifier + "_" + target_number.description + (decays_into_isomer != nil ? "_isomer_" + decays_into_isomer!.description : "")
                let new_element:ChemicalElementDetails! = ChemicalElementDetails.value_of(identifier: decayed_to_element_identifier) ?? ChemicalElementDetails.value_of(identifier: element_identifier)
                self.decay_mode = new_element.decay_mode
                self.half_life = new_element.half_life
                self.decays_into_isomer = new_element.decays_into_isomer
                print("Atom;try_decaying;" + original_element.rawValue + original_target_number.description + " -> " + decayed_to_element_identifier + ";took " + (i + 1).description + " iterations;new_half_life=\(half_life?.description);remaining_elapsed_time_since_last_decay=" + elapsed_time_since_last_decay.description)
                return (true, reaction)
            }
        }
        return (false, nil)
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
        case .beta_minus_double:
            let created_protons:[Proton] = [Proton(), Proton()]
            let destroyed_neutrons:[Neutron] = [neutrons[0], neutrons[1]]
            let created_electrons:[Electron] = [Electron(), Electron()]
            nucleus.protons.append(contentsOf: created_protons)
            nucleus.neutrons.removeFirst(2)
            // TODO: emit electron/positron and electron antineutrino
            return ChemicalReaction(created_protons: created_protons, destroyed_neutrons: destroyed_neutrons, created_electrons: created_electrons, created_antielectrons: [AntiParticle(created_electrons[0]), AntiParticle(created_electrons[1])])
        case .beta_minus_gamma:
            let created_proton:Proton = Proton()
            let destroyed_neutron:Neutron = neutrons[0]
            let created_electron:Electron = Electron()
            nucleus.protons.append(created_proton)
            nucleus.neutrons.removeFirst()
            // TODO: emit electron/positron and electron antineutrino AND emit a gamma ray
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
            
        case .isomeric_transition:
            decays_into_isomer = nil
            // TODO: fix
            return ChemicalReaction()
        }
    }
}
