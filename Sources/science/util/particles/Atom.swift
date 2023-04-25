//
//  Atom.swift
//
//  Created by Evan Anderson on 4/4/23.
//

import Foundation
import MetalKit

struct Atom : Hashable {
    var nucleus:AtomicNucleus
    var electron_shells:[ElectronShell]
    var velocity:SpeedUnit
    
    var electron_count : Int {
        return electron_shells.reduce(0, { $0 + $1.electrons.count })
    }
    
    var valence_shell : ElectronShell? {
        return electron_shells.last
    }
    var valence_electrons : [Electron]? {
        return valence_shell?.electrons
    }
    var is_stable : Bool {
        return valence_electrons?.count ?? 0 == 8
    }
    
    var type : AtomType {
        let proton_count:Int = nucleus.proton_count, electron_count:Int = electron_count
        return proton_count == electron_count ? .stable : proton_count > electron_count ? .anion : .cation
    }
    
    var chemical_element : ChemicalElement? {
        return ChemicalElement.elements[nucleus.proton_count]
    }
    
    var elementary_charge : Double {
        return nucleus.protons.reduce(0) { $0 + $1.elementary_charge } + electron_shells.reduce(0) { $0 + $1.elementary_charge }
    }
    
    mutating func collide(_ atom: inout Atom) {
        let atom1_velocity:SpeedUnit = velocity, atom2_velocity:SpeedUnit = atom.velocity
        velocity = -atom2_velocity
        atom.velocity = -atom1_velocity
    }
    
    func decay(_ type: AtomicDecayType) -> ChemicalReaction {
        switch type {
        case .alpha:
            let protons:[Proton] = nucleus.protons
            let neutrons:[Neutron] = nucleus.neutrons
            return ChemicalReaction(destroyed_protons: [protons[0], protons[1]], destroyed_neutrons: [neutrons[0], neutrons[1]])
        case .beta_minus:
            let electron:Electron = Electron()
            return ChemicalReaction(created_protons: [Proton()], destroyed_neutrons: [nucleus.neutrons.first!], created_electrons: [electron], created_antielectrons: [AntiParticle(electron)])
        case .beta_plus:
            return ChemicalReaction(destroyed_protons: [nucleus.protons.first!], created_neutrons: [Neutron()], created_antielectrons: [AntiParticle(Electron())])
        case .gamma:
            return ChemicalReaction()
        }
    }
}
