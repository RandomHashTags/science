//
//  Constant.swift
//
//
//  Created by Evan Anderson on 1/7/24.
//

import Foundation

public final class Constant : PowerTransmitter {
    public static let default_width:Int = 2
    public static let default_height:Int = 2
    
    public let id:UUID
    public var name:String?
    public var point:GridPoint
    public var width:Int
    public var height:Int
    public var facing:Direction
    
    public private(set) var power_out_point:GridPoint?
    public private(set) var powered:Bool
    
    init(id: UUID = UUID(), name: String? = nil, point: GridPoint, width: Int, height: Int, facing: Direction, power_out_point: GridPoint, powered: Bool) {
        self.id = id
        self.name = name
        self.point = point
        self.width = width
        self.height = height
        self.facing = facing
        self.power_out_point = power_out_point
        self.powered = powered
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
