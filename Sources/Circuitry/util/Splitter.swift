//
//  Splitter.swift
//
//
//  Created by Evan Anderson on 1/7/24.
//

import Foundation

public final class Splitter : CircuitComponent {
    public static let default_width:Int = 3
    public static let default_height:Int = 3
    
    public let id:UUID
    public var name:String?
    public var point:GridPoint
    public var width:Int
    public var height:Int
    public var facing:Direction
    
    public var bit_width_in:Int
    public var bit_width_out:Int
    
    init(id: UUID = UUID(), name: String? = nil, point: GridPoint, width: Int, height: Int, facing: Direction, bit_width_in: Int, bit_width_out: Int) {
        self.id = id
        self.name = name
        self.point = point
        self.width = width
        self.height = height
        self.facing = facing
        self.bit_width_in = bit_width_in
        self.bit_width_out = bit_width_out
    }
}
