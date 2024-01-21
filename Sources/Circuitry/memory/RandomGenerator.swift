//
//  RandomGenerator.swift
//
//
//  Created by Evan Anderson on 1/8/24.
//

import Foundation

public final class RandomGenerator : CircuitComponent {
    public let id:UUID
    public var name:String?
    public var point:GridPoint
    public var width:Int
    public var height:Int
    public var facing:Direction
    
    public var data_bits:Int
    public var seed:Int
    
    init(id: UUID = UUID(), name: String? = nil, point: GridPoint, width: Int = 9, height: Int = 10, facing: Direction, data_bits: Int, seed: Int) {
        self.id = id
        self.name = name
        self.point = point
        self.width = width
        self.height = height
        self.facing = facing
        self.data_bits = data_bits
        self.seed = seed
    }
}
