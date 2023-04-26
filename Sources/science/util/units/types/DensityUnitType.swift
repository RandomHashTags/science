//
//  DensityUnitType.swift
//  
//
//  Created by Evan Anderson on 4/26/23.
//

import Foundation

enum DensityUnitType : UnitType {
    case kilogram_per_cubic_metre
    case gram_per_cubic_centimetre
    
    var symbol : String {
        switch self {
        case .kilogram_per_cubic_metre: return "kg/m" + 3.as_superscript
        case .gram_per_cubic_centimetre: return "g/cm" + 3.as_superscript
        }
    }
}
