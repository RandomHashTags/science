//
//  Constant.swift
//
//
//  Created by Evan Anderson on 1/7/24.
//

import Foundation

public final class Constant : PowerTransmitter {
    public let id:UUID
    public var name:String?
    public var point:GridPoint
    public var width:Int
    public var height:Int
    public var facing:Direction
    
    public private(set) var power_out_point:GridPoint?
    public private(set) var powered:Bool
    
    public var data:CircuitData
    
    init(id: UUID = UUID(), name: String? = nil, point: GridPoint, width: Int = 2, height: Int = 2, facing: Direction = Direction.east, power_out_point: GridPoint, powered: Bool = false, data: CircuitData) {
        self.id = id
        self.name = name
        self.point = point
        self.width = width
        self.height = height
        self.facing = facing
        self.power_out_point = power_out_point
        self.powered = powered
        self.data = data
    }
    
    public func set_powered(circuit: Circuit, powered: Bool) {
        guard self.powered != powered else { return }
        self.powered = powered
        
        let receivers:[PowerReceiver] = circuit.power_receivers.filter({ $0.power_in_point == power_out_point })
        for receiver in receivers {
            receiver.set_powered(circuit: circuit, powered: powered)
        }
    }
}
