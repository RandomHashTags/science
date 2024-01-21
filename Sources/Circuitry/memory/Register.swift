//
//  Register.swift
//
//
//  Created by Evan Anderson on 1/8/24.
//

import Foundation
import HugeNumbers

public final class Register : CircuitComponent {
    public let id:UUID
    public var name:String?
    public var point:GridPoint
    public var width:Int
    public var height:Int
    public var facing:Direction
    
    public var data_bits:Int
    
    public private(set) var write_enabled:Bool
    public var write_enable_point:GridPoint
    
    public private(set) var value:HugeInt
    
    init(id: UUID = UUID(), name: String? = nil, point: GridPoint, width: Int = 8, height: Int = 9, facing: Direction = Direction.east, data_bits: Int, write_enabled: Bool, write_enable_point: GridPoint, value: HugeInt) {
        self.id = id
        self.name = name
        self.point = point
        self.width = width
        self.height = height
        self.facing = facing
        self.data_bits = data_bits
        self.write_enabled = write_enabled
        self.write_enable_point = write_enable_point
        self.value = value
    }
    
    public func power(data: CircuitData, write: Bool, clock: Bool) -> CircuitData {
        guard data.bits == data_bits else { return CircuitData(bits: data_bits, value: HugeInt.zero) }
        if write {
            value = data.value
        }
        return CircuitData(bits: data_bits, value: value)
    }
    
    public func reset() {
        value = HugeInt.zero
    }
}
