//
//  Compound.swift
//
//
//  Created by Evan Anderson on 1/18/24.
//

import Foundation
import OrderedCollections

public struct Compound : Hashable {
    public var molecules:OrderedDictionary<Molecule, Int>
    
    public init(molecules: OrderedDictionary<Molecule, Int>) {
        self.molecules = molecules
    }
}
