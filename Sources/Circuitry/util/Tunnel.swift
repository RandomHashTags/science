//
//  Tunnel.swift
//
//
//  Created by Evan Anderson on 1/23/24.
//

import Foundation
import HugeNumbers

public final class Tunnel : CircuitComponent, PowerReceiver {
    public let id:UUID
    public var name:String?
    public var point:GridPoint
    public var width:Int
    public var height:Int
    public var facing:Direction
    
    public var power_in_point:GridPoint?
    
    public private(set) var powered:Bool
    public var data:CircuitData
    
    public init(id: UUID = UUID(), name: String? = nil, point: GridPoint, width: Int = 3, height: Int = 3, facing: Direction = Direction.west, powered: Bool = false, data: CircuitData) {
        self.id = id
        self.name = name
        self.point = point
        self.width = width
        self.height = height
        self.facing = facing
        
        power_in_point = facing.point(x: point.x, y: point.y, width: width, height: height)
        self.powered = powered
        self.data = data
    }
    
    public func receive_power(circuit: Circuit, powered: Bool, data: CircuitData) {
        guard self.data.bits == data.bits else {
            fatalError("mismatch bits: data.bits=\(data.bits); expected=\(self.data.bits)")
        }
        self.powered = powered
        self.data.binary = data.binary
        
        let opposite_direction:Direction = facing.opposite
        let tunnels_of_same_name:[Tunnel] = circuit.power_receivers.compactMap({
            guard let tunnel:Tunnel = $0 as? Tunnel, tunnel.facing == opposite_direction, name == tunnel.name else { return nil }
            return tunnel
        })
        for tunnel in tunnels_of_same_name {
            tunnel.tunnel_power(circuit: circuit, powered: powered, data: data)
        }
    }
    
    public func tunnel_power(circuit: Circuit, powered: Bool, data: CircuitData) {
        self.powered = powered
        self.data = data
        
        let receivers:[PowerReceiver] = circuit.power_receivers.filter({ !($0 is Tunnel) && power_in_point == $0.power_in_point })
        for receiver in receivers {
            receiver.receive_power(circuit: circuit, powered: powered, data: data)
        }
    }
}
