//
//  ChemicalReaction.swift
//
//  Created by Evan Anderson on 4/5/23.
//

import Foundation
import OrderedCollections

public struct ChemicalReaction : Hashable { // TODO: fix terminology
    public let reactant:[Molecule]
    public let products:[Molecule]
    
    /*
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
    
    public var emitted_photons:[Photon]?
    public var emitted_protons:[Proton]?
    public var emitted_neutrons:[Neutron]?
    public var absorbed_electrons:[Int:Electron]? // TODO: fix*/
    
    public static func predict_product(reactant: [Molecule]) { // TODO: finish
        var left_amounts:OrderedDictionary<ChemicalElement, Int> = [:]
        
        var elements:OrderedSet<ChemicalElement> = []
        var compound_atoms:[Atom] = []
        
        for molecule in reactant {
            for atom in molecule.atoms {
                if let element:ChemicalElement = atom.chemical_element {
                    if !elements.contains(element) {
                        compound_atoms.append(atom)
                    }
                    elements.append(element)
                    
                    print("ChemicalReaction;predict_product;element=\(element);atom.electron_count=\(atom.electron_count);atom.elementary_charge=\(atom.elementary_charge)")
                    if left_amounts[element] == nil {
                        left_amounts[element] = 1
                    } else {
                        left_amounts[element]! += 1
                    }
                }
            }
        }
        print("ChemicalReaction;predict_product;left_amounts=\(left_amounts)")
        if compound_atoms.reduce(0, { $0 + $1.elementary_charge }) == 0 {
            let compound_molecule:Molecule = Molecule(atoms: compound_atoms)
            print("ChemicalReaction;predict_product;compound_molecule=" + compound_molecule.molecular_formula)
            
            var product:OrderedDictionary<Molecule, Int> = [:]
            product[compound_molecule] = 1
            
            var balanced_elements:Set<ChemicalElement> = []
        } else {
        }
        
        
    }
}
