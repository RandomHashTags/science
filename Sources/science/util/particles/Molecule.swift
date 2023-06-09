//
//  Molecule.swift
//
//  Created by Evan Anderson on 4/6/23.
//

import Foundation

public struct Molecule {
    public var atoms:[Atom]
    
    public init(atoms: [Atom]) {
        self.atoms = atoms
    }
    
    public var molecular_formula : String {
        var elements:[ChemicalElement:Int] = [:]
        for atom in atoms {
            if let element:ChemicalElement = atom.chemical_element {
                if elements[element] == nil {
                    elements[element] = 1
                } else {
                    elements[element]! += 1
                }
            }
        }
        return elements.map({ get_molecular_formula($0.key, amount: $0.value) }).joined()
    }
    private func get_molecular_formula(_ chemical_element: ChemicalElement, amount: Int) -> String {
        let amount_string:String = amount > 1 ? amount.as_subscript : ""
        return chemical_element.details.symbol + amount_string
    }
}


extension Molecule {
    public static var water:Molecule = {
        let hydrogen:Atom = ChemicalElement.hydrogen.details.atom
        return Molecule(atoms: [hydrogen, hydrogen, ChemicalElement.oxygen.details.atom])
    }()
}
