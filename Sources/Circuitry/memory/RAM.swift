//
//  RAM.swift
//
//
//  Created by Evan Anderson on 1/8/24.
//

import Foundation
import HugeNumbers
import SwiftUnits

public final class RAM : CircuitComponent {
    public let id:UUID
    public var name:String?
    public var point:GridPoint
    public var width:Int
    public var height:Int
    public var propagation_delay:TimeUnit
    public var facing:Direction
    
    public var type:MemoryType
    public var address_bits : Int {
        didSet {
            maximum_addresses = calculate_maximum_addresses()
            values = [:]
        }
    }
    public private(set) var maximum_addresses:HugeInt
    public var data_bits : Int {
        didSet {
            values = [:]
        }
    }
    
    public private(set) var values:[HugeInt:HugeInt]
    
    package init(id: UUID = UUID(), name: String? = nil, point: GridPoint, width: Int = 23, height: Int = 26, propagation_delay: TimeUnit, facing: Direction = Direction.east, type: MemoryType, address_bits: Int, data_bits: Int, values: [HugeInt:HugeInt] = [:]) {
        self.id = id
        self.name = name
        self.point = point
        self.width = width
        self.height = height
        self.propagation_delay = propagation_delay
        self.facing = facing

        self.type = type
        self.address_bits = address_bits
        self.maximum_addresses = HugeInt.zero
        self.data_bits = data_bits
        self.values = values
        
        self.maximum_addresses = calculate_maximum_addresses()
    }
    private func calculate_maximum_addresses() -> HugeInt {
        return HugeInt(2).to_the_power_of(UInt64(address_bits))
    }
    
    public func power(address: CircuitData, data: CircuitData, write_enable: Bool, output_enable: Bool) -> CircuitData {
        let address_value:HugeInt = address.integer
        guard address.bits == address_bits, address_value < maximum_addresses, data.bits == data_bits else { return CircuitData(bits: data_bits, is_negative: false, binary: [Bool].init(repeating: false, count: data_bits)) }
        if write_enable {
            values[address_value] = data.integer
        }
        let value:HugeInt
        if output_enable {
            value = values[address_value] ?? HugeInt.zero
        } else {
            value = HugeInt.zero
        }
        return CircuitData(bits: data_bits, value: value)
    }
    
    public func write(address: HugeInt, value: HugeInt) {
        guard address < maximum_addresses else { return }
        values[address] = value
    }
}
