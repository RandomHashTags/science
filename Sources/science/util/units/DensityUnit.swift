//
//  DensityUnit.swift
//  
//
//  Created by Evan Anderson on 4/26/23.
//

import Foundation
import huge_numbers

public struct DensityUnit : Unit {
    public typealias TargetUnitType = DensityUnitType
    
    public var prefix:UnitPrefix
    public var type:TargetUnitType
    public var value:HugeFloat
    
    public init(prefix: UnitPrefix, type: TargetUnitType, value: HugeFloat) {
        self.prefix = prefix
        self.type = type
        self.value = value
    }
    
    public func convert_value_to_unit(_ unit: DensityUnitType) -> HugeFloat {
        switch type {
            
        case .kilogram_per_cubic_metre:
            switch unit {
            case .kilogram_per_cubic_metre: return value
            case .gram_per_cubic_centimetre: return value * HugeFloat("0.001")
            }
            
        case .gram_per_cubic_centimetre:
            switch unit {
            case .kilogram_per_cubic_metre: return value * HugeFloat("1000")
            case .gram_per_cubic_centimetre: return value
            }
            
        }
    }
}