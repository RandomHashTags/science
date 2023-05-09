//
//  ChemicalElementIsotope.swift
//  
//
//  Created by Evan Anderson on 5/7/23.
//

import Foundation

public protocol ChemicalElementIsotope : CaseIterable, RawRepresentable where RawValue == String {
    var element : ChemicalElement { get }
    
    var load_details : ChemicalElementDetails { get }
}
public extension ChemicalElementIsotope {
    var details : ChemicalElementDetails {
        return ChemicalElementDetails.value_of(identifier: rawValue)!
    }
    
    var atom : Atom {
        return details.atom
    }
}
