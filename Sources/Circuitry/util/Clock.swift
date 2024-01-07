//
//  Clock.swift
//
//
//  Created by Evan Anderson on 1/7/24.
//

import Foundation
import SwiftUnits

public final class Clock : CircuitComponent {
    public var name:String
    public var point:GridPoint
    public var facing:Direction
    
    public var frequency:FrequencyUnit
    
    init(name: String, point: GridPoint, facing: Direction, frequency: FrequencyUnit) {
        self.name = name
        self.point = point
        self.facing = facing
        self.frequency = frequency
    }
}
