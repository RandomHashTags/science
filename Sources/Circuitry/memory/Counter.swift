//
//  Counter.swift
//
//
//  Created by Evan Anderson on 1/8/24.
//

import Foundation
import HugeNumbers

public final class Counter : CircuitComponent {
    public let id:UUID
    public var name:String?
    public var point:GridPoint
    public var width:Int
    public var height:Int
    public var facing:Direction
    
    public var data_bits:Int
    public var maximum_value:HugeInt
    public private(set) var value:HugeInt
    
    init(id: UUID = UUID(), name: String? = nil, point: GridPoint, width: Int = 20, height: Int = 28, facing: Direction = Direction.east, data_bits: Int, maximum_value: HugeInt, value: HugeInt = HugeInt.zero) {
        self.id = id
        self.name = name
        self.point = point
        self.width = width
        self.height = height
        self.facing = facing
        self.data_bits = data_bits
        self.maximum_value = maximum_value
        self.value = value
    }
}
