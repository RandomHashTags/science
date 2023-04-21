//
//  FrequencyUnitType.swift
//
//  Created by Evan Anderson on 4/6/23.
//

import Foundation

enum FrequencyUnitType : UnitType {
    case wavelength_in_metres
    
    case hertz
        
    var symbol : String {
        switch self {
        case .wavelength_in_metres: return "m"
            
        case .hertz: return "Hz"
        }
    }
}
