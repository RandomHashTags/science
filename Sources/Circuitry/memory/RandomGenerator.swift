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
    public var facing:Direction
    
    public var data_bits:Int
    public var seed:Int
    
    init(id: UUID = UUID(), name: String? = nil, point: GridPoint, facing: Direction, data_bits: Int, seed: Int) {
        self.id = id
        self.name = name
        self.point = point
        self.facing = facing
        self.data_bits = data_bits
        self.seed = seed
    }
}
