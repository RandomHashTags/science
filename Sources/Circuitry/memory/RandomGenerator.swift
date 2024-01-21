//
//  RandomGenerator.swift
//
//
//  Created by Evan Anderson on 1/8/24.
//

import Foundation
import HugeNumbers

public final class RandomGenerator : CircuitComponent {
    public let id:UUID
    public var name:String?
    public var point:GridPoint
    public var width:Int
    public var height:Int
    public var facing:Direction
    
    public var data_bits:Int
    public var seed:Int
    public private(set) var value:HugeInt
    
    public init(id: UUID = UUID(), name: String? = nil, point: GridPoint, width: Int = 9, height: Int = 10, facing: Direction = Direction.east, data_bits: Int, seed: Int, value: HugeInt = HugeInt.zero) {
        self.id = id
        self.name = name
        self.point = point
        self.width = width
        self.height = height
        self.facing = facing
        self.data_bits = data_bits
        self.seed = seed
        self.value = value
    }
    
    public func power(reset: Bool, enable: Bool, clock: Bool) -> CircuitData {
        if reset {
            value = HugeInt.zero
        }
        return CircuitData(bits: data_bits, value: value)
    }
}
