//
//  Counter.swift
//
//
//  Created by Evan Anderson on 1/8/24.
//

import Foundation

public final class Counter : CircuitComponent {
    public let id:UUID
    public var name:String?
    public var point:GridPoint
    public var facing:Direction
    
    public var data_bits:Int
    public var maximum_value:Int
    public private(set) var value:Int
    
    init(id: UUID = UUID(), name: String? = nil, point: GridPoint, facing: Direction, data_bits: Int, maximum_value: Int, value: Int) {
        self.id = id
        self.name = name
        self.point = point
        self.facing = facing
        self.data_bits = data_bits
        self.maximum_value = maximum_value
        self.value = value
    }
}

public extension Counter {
    static func `default`(point: GridPoint, facing: Direction) -> Counter {
        return Counter(point: point, facing: facing, data_bits: 8, maximum_value: 255, value: 0)
    }
}
