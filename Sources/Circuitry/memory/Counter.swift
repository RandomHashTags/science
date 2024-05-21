//
//  Counter.swift
//
//
//  Created by Evan Anderson on 1/8/24.
//

import Foundation
import HugeNumbers
import SwiftUnits

public final class Counter : CircuitComponent {
    public let id:UUID
    public var name:String?
    public var point:GridPoint
    public var width:Int
    public var height:Int
    public var propagation_delay:TimeUnit
    public var facing:Direction
    
    public var data_bits:Int
    public var maximum_value:HugeInt
    public private(set) var value:HugeInt
    
    init(id: UUID = UUID(), name: String? = nil, point: GridPoint, width: Int = 20, height: Int = 28, propagation_delay: TimeUnit, facing: Direction = Direction.east, data_bits: Int, maximum_value: HugeInt, value: HugeInt = HugeInt.zero) {
        self.id = id
        self.name = name
        self.point = point
        self.width = width
        self.height = height
        self.propagation_delay = propagation_delay
        self.facing = facing

        self.data_bits = data_bits
        self.maximum_value = maximum_value
        self.value = value
    }
    
    public func power(reset: Bool, load: Bool, up_down: Bool, update: Bool, data: CircuitData) -> CircuitData {
        if update {
            value += up_down ? 1 : -1
        }
        return CircuitData(bits: data_bits, value: value)
    }
    
    public func reset() {
        value = HugeInt.zero
    }
}
