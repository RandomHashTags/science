//
//  Atom.swift
//
//  Created by Evan Anderson on 4/4/23.
//

import Foundation
import MetalKit
import HugeNumbers
import SwiftUnits
import ScienceUtilities

public struct Atom : Hashable {
    public private(set) var uuid:UUID = UUID()
    public private(set) var nucleus:AtomicNucleus
    public private(set) var electron_shells:[ElectronShell]
    
    public var elapsed_time_since_last_decay:ElapsedTime = ElapsedTime()
    public private(set) var decay_mode:AtomicDecayType?, half_life:TimeUnit?, isomer:Int?, decays_into_isomer:Int?
    
    public var lifetime_total:ElapsedTime = ElapsedTime()
    
    public private(set) var survived_iterations:UInt64 = 0
    
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
        return element.rawValue + "_\(target_number)" + (isomer != nil ? "_isomer_\(isomer!)" : "")
    }
    public var chemical_element_details : ChemicalElementDetails? {
        guard let identifier:String = chemical_element_identifier else { return nil }
        return ChemicalElementDetails.value_of(identifier: identifier)
    }
    
    /// Measured in coulombs
    public var elementary_charge : Double {
        return nucleus.protons.reduce(0) { $0 + $1.elementary_charge } + electron_shells.reduce(0) { $0 + $1.elementary_charge }
    }
    
    public var is_unstable : Bool {
        return decay_mode != nil || half_life != nil
    }
    
    public mutating func gain_electrons(_ amount: Int) {
        var gained:Int = 0
        while gained != amount {
            if let unfilled_shell_index:Int = electron_shells.firstIndex(where: { $0.electrons.count != $0.maximum_allowed_electrons }) {
                let shell:ElectronShell = electron_shells[unfilled_shell_index]
                let shell_gained:Int = min(shell.maximum_allowed_electrons - shell.electrons.count, amount - gained)
                electron_shells[unfilled_shell_index].gained(shell_gained)
                gained += shell_gained
            } else {
                fatalError("gained an electron shell")
            }
        }
    }
    public mutating func lose_electrons(_ amount: Int) {
        guard electron_count >= amount else {
            fatalError("electron_count < amount;chemical_element_identifier=\(String(describing: chemical_element_identifier));electron_count=\(electron_count);amount=\(amount)")
        }
        var lost:Int = 0
        while lost != amount {
            if let shell_index:Int = electron_shells.lastIndex(where: { $0.electrons.count > 0 }) {
                let shell:ElectronShell = electron_shells[shell_index]
                let shell_lost:Int = min(shell.electrons.count, amount - lost)
                lost += shell_lost
                
                electron_shells[shell_index].lost(shell_lost)
            }
        }
    }
}

public extension Atom {
    mutating func decay() -> [AtomicDecayResult]? {
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
        guard let half_life:TimeUnit = half_life, let decay_mode:AtomicDecayType = decay_mode else { return nil }
        let test:TimeUnit = elapsed_time_since_last_decay.to_unit(unit_prefix: half_life.prefix, unit_type: half_life.type)
        let iterations:UInt64 = test.value.divide_by(half_life.value, precision: HugeInt("5")).integer.to_int() ?? 0
        guard iterations > 0 else { return nil }
        for i in 1...iterations {
            if Bool.random() {
                let total_iteration_count = i + survived_iterations
                let atom_lifetime:TimeUnit = half_life * HugeInt(total_iteration_count)
                elapsed_time_since_last_decay -= atom_lifetime
                
                let result:AtomicDecayResult = decay(decay_mode, lifetime: atom_lifetime, iterations: total_iteration_count)
                self.isomer = decays_into_isomer
                let new_element_details:ChemicalElementDetails
                if let details:ChemicalElementDetails = ChemicalElementDetails.value_of(identifier: result.decayed_into) {
                    new_element_details = details
                } else if let element:ChemicalElement = chemical_element, let details:ChemicalElementDetails = ChemicalElementDetails.value_of(identifier: element.rawValue) {
                    new_element_details = details
                } else {
                    fatalError("unknown element details: " + result.decayed_into)
                }
                
                self.decay_mode = new_element_details.decay_mode
                self.half_life = new_element_details.half_life
                self.decays_into_isomer = new_element_details.decays_into_isomer
                print("Atom;try_decaying;" + result.decayed_from + " -> " + result.decayed_into + ";maximum_iterations=\(iterations);took \(total_iteration_count) iterations;new_half_life=\(String(describing: self.half_life?.description));remaining_elapsed_time_since_last_decay=" + elapsed_time_since_last_decay.description)
                survived_iterations = 0
                return result
            }
        }
        survived_iterations += iterations
        return nil
    }
    private mutating func decay(_ type: AtomicDecayType, lifetime: TimeUnit, iterations: UInt64) -> AtomicDecayResult {
        let decayed_from:String = chemical_element_identifier!
        let protons:[Proton] = nucleus.protons, neutrons:[Neutron] = nucleus.neutrons
        switch type {
        case .alpha:
            nucleus.protons.removeFirst(2)
            nucleus.neutrons.removeFirst(2)
            break
            
        case .beta_minus(let amount):
            var created_protons:[Proton] = []
            var destroyed_neutrons:[Neutron] = []
            var created_electrons:[Electron] = [], created_antielectrons:[AntiParticle] = []
            for i in 0..<amount {
                created_protons.append(Proton())
                destroyed_neutrons.append(neutrons[i])
                let electron:Electron = Electron()
                created_electrons.append(electron)
                created_antielectrons.append(AntiParticle(electron))
            }
            nucleus.protons.append(contentsOf: created_protons)
            nucleus.neutrons.removeFirst(amount)
            // TODO: emit electron/positron and electron antineutrino
            //return ChemicalReaction(created_protons: created_protons, destroyed_neutrons: destroyed_neutrons, created_electrons: created_electrons, created_antielectrons: created_antielectrons)
            break
        case .beta_minus_gamma:
            let created_proton:Proton = Proton()
            let destroyed_neutron:Neutron = neutrons[0]
            let created_electron:Electron = Electron()
            nucleus.protons.append(created_proton)
            nucleus.neutrons.removeFirst()
            // TODO: emit electron/positron and electron antineutrino AND emit a gamma ray
           // return ChemicalReaction(created_protons: [created_proton], destroyed_neutrons: [destroyed_neutron], created_electrons: [created_electron], created_antielectrons: [AntiParticle(created_electron)])
            break
        case .beta_minus_neutron_emission(let amount):
            var created_protons:[Proton] = []
            var destroyed_neutrons:[Neutron] = []
            var created_electrons:[Electron] = [], created_antielectrons:[AntiParticle] = []
            var emitted_neutrons:[Neutron] = []
            for i in 0..<amount {
                created_protons.append(Proton())
                let neutron_index:Int = i * 2
                destroyed_neutrons.append(neutrons[neutron_index])
                emitted_neutrons.append(neutrons[neutron_index + 1])
                created_electrons.append(Electron())
            }
            nucleus.protons.append(contentsOf: created_protons)
            nucleus.neutrons.removeFirst(2 * amount)
            // TODO: emit electron/positron and electron antineutrino
            //return ChemicalReaction(created_protons: created_protons, destroyed_neutrons: destroyed_neutrons, created_electrons: created_electrons, created_antielectrons: created_antielectrons, emitted_neutrons: emitted_neutrons)
            
        case .beta_plus:
            let created_neutron:Neutron = Neutron()
            nucleus.protons.removeFirst()
            nucleus.neutrons.append(created_neutron)
            //return ChemicalReaction(destroyed_protons: [protons[0]], created_neutrons: [created_neutron], created_antielectrons: [AntiParticle(Electron())])
            break
        case .beta_plus_proton_emission:
            let created_neutron:Neutron = Neutron()
            nucleus.protons.removeFirst(2)
            nucleus.neutrons.append(created_neutron)
            //return ChemicalReaction(destroyed_protons: [protons[0]], created_neutrons: [created_neutron], created_antielectrons: [AntiParticle(Electron())], emitted_protons: [protons[1]])
            break
            
        case .gamma:
            // TODO: emit gamma ray photon
            break
            
        case .proton_emission(let amount):
            nucleus.protons.removeFirst(amount)
            //return ChemicalReaction(emitted_protons: Array(protons[0..<amount]))
            break
            
        case .neutron_emission(let amount):
            nucleus.neutrons.removeFirst(amount)
            //return ChemicalReaction(emitted_neutrons: Array(neutrons[0..<amount]))
            break
            
        case .electron_capture(let amount):
            // TODO: fix
            break
            
        case .isomeric_transition:
            decays_into_isomer = nil
            // TODO: fix
            break
        }
        return AtomicDecayResult(atom_uuid: uuid, atom_lifetime: lifetime, iteration_count: iterations, decayed_from: decayed_from, decayed_into: chemical_element_identifier!)
    }
}
