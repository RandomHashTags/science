//
//  Splitter.swift
//
//
//  Created by Evan Anderson on 1/7/24.
//

import Foundation

public final class Splitter : CircuitComponent {
    public var name:String
    public var point:GridPoint
    public var facing:Direction
    
    public var bit_width_in:Int
    public var bit_width_out:Int
    
    init(name: String, point: GridPoint, facing: Direction, bit_width_in: Int, bit_width_out: Int) {
        self.name = name
        self.point = point
        self.facing = facing
        self.bit_width_in = bit_width_in
        self.bit_width_out = bit_width_out
    }
}
