//
//  Molecule.swift
//
//  Created by Evan Anderson on 4/6/23.
//

import Foundation
import OrderedCollections
import ScienceUtilities

public struct Molecule : Hashable {
    public private(set) var atoms:[Atom]
    
    public init(atoms: [Atom]) {
        self.atoms = atoms
    }
    public init(elements: OrderedDictionary<ChemicalElement, Int>) {
        var atoms:[Atom] = []
        atoms.reserveCapacity(elements.reduce(0, { $0 + $1.1 }))
        for (element, amount) in elements {
            let atom:Atom = element.details.atom
            atoms.append(contentsOf: (0..<amount).map({ _ in atom }))
        }
        self.atoms = atoms
    }
    
    public var molecular_formula : String {
        var elements:OrderedDictionary<ChemicalElement, Int> = [:]
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
    
    /// Measured in coulombs
    public var elementary_charge : Double {
        return atoms.reduce(0, { $0 + $1.elementary_charge })
    }
}


public extension Molecule {
    static let water:Molecule = Molecule(elements: [ChemicalElement.hydrogen : 2, ChemicalElement.oxygen : 1])
    
    static let carbon_monoxide:Molecule = Molecule(elements: [ChemicalElement.carbon : 1, ChemicalElement.oxygen : 1])
    static let carbon_dioxide:Molecule = Molecule(elements: [ChemicalElement.carbon : 1, ChemicalElement.oxygen : 2])
    
    static let glucose:Molecule = Molecule(elements: [ChemicalElement.carbon : 6, ChemicalElement.hydrogen : 12, ChemicalElement.oxygen : 6])
}
