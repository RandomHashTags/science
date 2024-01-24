//
//  BitExtender.swift
//
//
//  Created by Evan Anderson on 1/23/24.
//

import Foundation
import HugeNumbers

public final class BitExtender : CircuitComponent, PowerReceiver {
    public let id:UUID
    public var name:String?
    public var point:GridPoint
    public var width:Int
    public var height:Int
    public var facing:Direction
    
    public private(set) var power_in_point:GridPoint?
    public private(set) var power_out_point:GridPoint
    public private(set) var powered:Bool
    
    public var type:BitExtensionType
    public var bits_in:Int
    public var bits_out:Int
    public private(set) var value:CircuitData
    public var input:[Bool]?
    
    public init(id: UUID = UUID(), name: String? = nil, point: GridPoint, width: Int = 5, height: Int = 5, facing: Direction = Direction.east, type: BitExtensionType, bits_in: Int, bits_out: Int) {
        self.id = id
        self.name = name
        self.point = point
        self.width = width
        self.height = height
        self.facing = facing
        
        self.type = type
        power_out_point = facing.point(x: point.x, y: point.y, width: width, height: height)
        powered = false
        self.bits_in = bits_in
        self.bits_out = bits_out
        value = CircuitData(bits: bits_out, binary: [Bool].init(repeating: false, count: bits_out))
    }
    
    public func receive_power(circuit: Circuit, powered: Bool, data: CircuitData) {
        self.powered = powered
        
        var binary:[Bool] = data.binary
        extend(&binary, data: data)
        value.binary = binary
        
        let receivers:[PowerReceiver] = circuit.power_receivers.filter({ $0.power_in_point == power_out_point })
        for receiver in receivers {
            receiver.receive_power(circuit: circuit, powered: powered, data: value)
        }
    }
    
    private func extend(_ binary: inout [Bool], data: CircuitData) {
        switch type {
        case .one:
            binary.insert(contentsOf: [Bool].init(repeating: true, count: bits_out - binary.count), at: 0)
            break
        case .zero:
            binary.insert(contentsOf: [Bool].init(repeating: false, count: bits_out - binary.count), at: 0)
            break
        case .sign:
            binary.insert(contentsOf: [Bool].init(repeating: !data.is_negative, count: bits_out - binary.count), at: 0)
            break
        case .input:
            let input:[Bool] = input ?? [Bool].init(repeating: false, count: bits_out)
            // TODO: support
            break
        }
    }
}
