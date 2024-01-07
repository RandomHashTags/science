//
//  Output.swift
//
//
//  Created by Evan Anderson on 1/7/24.
//

import Foundation

public final class Output : CircuitComponent {
    public var name:String
    public var point:GridPoint
    public var facing:Direction
    
    public var data_bits:Int
    
    init(name: String, point: GridPoint, facing: Direction, data_bits: Int) {
        self.name = name
        self.point = point
        self.facing = facing
        self.data_bits = data_bits
    }
}
