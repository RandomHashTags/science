//
//  FrequencyUnit.swift
//
//  Created by Evan Anderson on 4/6/23.
//

import Foundation
import huge_numbers

public struct FrequencyUnit : Unit {
    public typealias TargetUnitType = FrequencyUnitType
    
    public var prefix:UnitPrefix
    public var type:TargetUnitType
    public var value:HugeFloat
    
    public init(prefix: UnitPrefix, type: TargetUnitType, value: HugeFloat) {
        self.prefix = prefix
        self.type = type
        self.value = value
    }
    
    public func convert_value_to_unit(_ unit: FrequencyUnitType) -> HugeFloat {
        switch type {
            
        case .wavelength_in_metres:
            switch unit {
            case .wavelength_in_metres: return value
            case .hertz: return value / 299_792_458
            }
            
        case .hertz:
            switch unit {
            case .wavelength_in_metres: return 299_792_458_000_000 / value
            case .hertz: return value
            }
            
        }
    }
}
