//
//  Output.swift
//
//
//  Created by Evan Anderson on 1/7/24.
//

import Foundation
import HugeNumbers

public final class Output : CircuitComponent, PowerReceiver {
    public let id:UUID
    public var name:String?
    public var point:GridPoint
    public var width:Int
    public var height:Int
    public var facing:Direction
    
    public var power_in_point:GridPoint?
    public private(set) var powered:Bool
    
    public var data_bits:Int
    public private(set) var data:CircuitData
    
    public init(id: UUID = UUID(), name: String? = nil, point: GridPoint, width: Int = 4, height: Int = 3, facing: Direction = Direction.east, data_bits: Int) {
        self.id = id
        self.name = name
        self.point = point
        self.width = width
        self.height = height
        self.facing = facing
        power_in_point = facing.point(x: point.x, y: point.y, width: width, height: height)
        powered = false
        self.data_bits = data_bits
        data = CircuitData(bits: data_bits, value: false)
    }
    
    public func set_powered(circuit: Circuit, powered: Bool) {
    }
    
    public func receive_power(circuit: Circuit, powered: Bool, data: CircuitData) {
        self.powered = powered
        guard data.bits == data_bits else { return }
        self.data.binary = data.binary
    }
}
