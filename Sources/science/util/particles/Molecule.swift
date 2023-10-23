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
        var element_ids:Set<ChemicalElement> = []
        var element_order:[ChemicalElement] = []
        for atom in atoms {
            if let element:ChemicalElement = atom.chemical_element {
                if elements[element] == nil {
                    elements[element] = 1
                } else {
                    elements[element]! += 1
                }
                if element_ids.insert(element).inserted {
                    element_order.append(element)
                }
            }
        }
        var values:[String] = []
        for element in element_order {
            values.append(get_molecular_formula(element, amount: elements[element]!))
        }
        return values.joined()
    }
    private func get_molecular_formula(_ chemical_element: ChemicalElement, amount: Int) -> String {
        let amount_string:String = amount > 1 ? amount.as_subscript : ""
        return chemical_element.details.symbol + amount_string
    }
}


extension Molecule {
    public static var water : Molecule = {
        let hydrogen:Atom = ChemicalElement.hydrogen.details.atom
        return Molecule(atoms: [hydrogen, hydrogen, ChemicalElement.oxygen.details.atom])
    }()
    
    public static var glucose : Molecule = {
        let carbon:Atom = ChemicalElement.carbon.details.atom
        let hydrogen:Atom = ChemicalElement.hydrogen.details.atom
        let oxygen:Atom = ChemicalElement.oxygen.details.atom
        return Molecule(atoms: [
            carbon, carbon, carbon, carbon, carbon, carbon,
            hydrogen, hydrogen, hydrogen, hydrogen, hydrogen, hydrogen, hydrogen, hydrogen, hydrogen, hydrogen, hydrogen, hydrogen,
            oxygen, oxygen, oxygen, oxygen, oxygen, oxygen
        ])
    }()
}
