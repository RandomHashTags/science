//
//  Atom.swift
//
//  Created by Evan Anderson on 4/4/23.
//

import Foundation
import MetalKit
import huge_numbers

public struct Atom : Hashable {
    public var uuid:UUID = UUID()
    public var nucleus:AtomicNucleus
    public var electron_shells:[ElectronShell]
    
    public var elapsed_time_since_last_decay:ElapsedTime = ElapsedTime()
    public var decay_mode:AtomicDecayType?, half_life:TimeUnit?, decays_into_isomer:Int?
    
    public var lifetime_total:ElapsedTime = ElapsedTime()
    
    public var survived_iterations:UInt64 = 0
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
    public var chemical_element_identifier : String? {
        guard let element:ChemicalElement = chemical_element else { return nil }
        let target_number:Int = nucleus.proton_count + nucleus.neutron_count
        return element.rawValue + "_\(target_number)" + (decays_into_isomer != nil ? "_isomer_\(decays_into_isomer!)" : "")
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
    public mutating func decay() -> [AtomicDecayResult]? {
        // TODO: support probability of decaying (half-life=50% chance of it decaying within the half-life)
        guard decay_mode != nil && half_life != nil && elapsed_time_since_last_decay >= half_life! else { return nil }
        var results:[AtomicDecayResult] = []
        
        var status:Bool = true
        while status {
            if let result:AtomicDecayResult = try_decaying() {
                results.append(result)
            } else {
                status = false
            }
        }
        return results.isEmpty ? nil : results
    }
    private mutating func try_decaying() -> AtomicDecayResult? {
        let test:TimeUnit = elapsed_time_since_last_decay.to_unit(unit_prefix: half_life!.prefix, unit_type: half_life!.type)
        let iterations:UInt64 = test.value.divide_by(half_life!.value, precision: HugeInt.float_precision).integer.to_int()!
        guard iterations > 0 else { return nil }
        for i in 1...iterations {
            if Bool.random() {
                let total_iteration_count = i + survived_iterations
                let atom_lifetime:TimeUnit = half_life! * HugeInt(total_iteration_count)
                elapsed_time_since_last_decay -= atom_lifetime
                let original_element_identifier:String = chemical_element_identifier!
                
                let reaction:ChemicalReaction = decay(decay_mode!)
                let decayed_to_element_identifier:String = chemical_element_identifier!
                let new_element:ChemicalElementDetails! = ChemicalElementDetails.value_of(identifier: decayed_to_element_identifier) ?? ChemicalElementDetails.value_of(identifier: chemical_element!.rawValue)
                
                self.decay_mode = new_element.decay_mode
                self.half_life = new_element.half_life
                self.decays_into_isomer = new_element.decays_into_isomer
                print("Atom;try_decaying;" + original_element_identifier + " -> " + decayed_to_element_identifier + ";maximum_iterations=\(iterations);took \(total_iteration_count) iterations;new_half_life=\(String(describing: half_life?.description));remaining_elapsed_time_since_last_decay=" + elapsed_time_since_last_decay.description)
                survived_iterations = 0
                return AtomicDecayResult(atom_uuid: uuid, atom_lifetime: atom_lifetime, reaction: reaction, iteration_count: total_iteration_count, decayed_from: original_element_identifier, decayed_into: decayed_to_element_identifier)
            }
        }
        survived_iterations += iterations
        return nil
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
