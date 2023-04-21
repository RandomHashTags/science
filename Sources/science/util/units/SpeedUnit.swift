//
//  SpeedUnit.swift
//
//  Created by Evan Anderson on 4/5/23.
//

import Foundation
import huge_numbers

struct SpeedUnit : Unit {
    typealias TargetUnitType = SpeedUnitType
    
    var prefix:UnitPrefix
    var type:SpeedUnitType
    var value:HugeFloat
    
    func convert_value_to_unit(_ unit: SpeedUnitType) -> HugeFloat {
        switch type {
            
        case .metre_per_second:
            switch unit {
            case .metre_per_second: return value
            case .kilometre_per_hour: return value * 3.6
            case .mile_per_hour: return value * 2.236936
            case .knot: return value * 1.943844
            case .foot_per_second: return value * 3.280840
            }
            
        case .kilometre_per_hour:
            switch unit {
            case .metre_per_second: return value * 0.277778
            case .kilometre_per_hour: return value
            case .mile_per_hour: return value * 0.621371
            case .knot: return value * 0.539957
            case .foot_per_second: return value * 0.911344
            }
            
        case .mile_per_hour:
            switch unit {
            case .metre_per_second: return value * 0.44704
            case .kilometre_per_hour: return value * 1.609344
            case .mile_per_hour: return value
            case .knot: return value * 0.868976
            case .foot_per_second: return value * 1.466667
            }
            
        case .knot:
            switch unit {
            case .metre_per_second: return value * 0.514444
            case .kilometre_per_hour: return value * 1.852
            case .mile_per_hour: return value * 1.150779
            case .knot: return value
            case .foot_per_second: return value * 1.68810
            }
            
        case .foot_per_second:
            switch unit {
            case .metre_per_second: return value * 0.3048
            case .kilometre_per_hour: return value * 1.09728
            case .mile_per_hour: return value * 0.681818
            case .knot: return value * 0.592484
            case .foot_per_second: return value
            }
        }
    }
}
