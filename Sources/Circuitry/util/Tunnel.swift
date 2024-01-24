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
    public var data_bits:Int
    
    public init(id: UUID = UUID(), name: String? = nil, point: GridPoint, width: Int = 3, height: Int = 3, facing: Direction = Direction.west, data_bits: Int) {
        self.id = id
        self.name = name
        self.point = point
        self.width = width
        self.height = height
        self.facing = facing
        
        power_in_point = facing.point(x: point.x, y: point.y, width: width, height: height)
        powered = false
        self.data_bits = data_bits
    }
    
    public func receive_power(circuit: Circuit, powered: Bool, data: CircuitData) {
        guard data.bits == data_bits else {
            fatalError("mismatch bits: data.bits=\(data.bits); expected=\(data_bits)")
        }
        self.powered = powered
        
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
        
        let receivers:[PowerReceiver] = circuit.power_receivers.filter({ !($0 is Tunnel) && power_in_point == $0.power_in_point })
        for receiver in receivers {
            receiver.receive_power(circuit: circuit, powered: powered, data: data)
        }
    }
}
