//
//  RAM.swift
//
//
//  Created by Evan Anderson on 1/8/24.
//

import Foundation
import HugeNumbers

public final class RAM : CircuitComponent {
    public let id:UUID
    public var name:String?
    public var point:GridPoint
    public var width:Int
    public var height:Int
    public var facing:Direction
    
    public var type:MemoryType
    public var address_bits : Int {
        didSet {
            maximum_addresses = calculate_maximum_addresses()
        }
    }
    public private(set) var maximum_addresses:HugeInt
    public var data_bits:Int
    
    public private(set) var values:[HugeInt:HugeInt]
    
    package init(id: UUID = UUID(), name: String? = nil, point: GridPoint, width: Int = 23, height: Int = 26, facing: Direction = Direction.east, type: MemoryType, address_bits: Int, data_bits: Int, read_enabled: Bool, write_enabled: Bool, values: [HugeInt:HugeInt]) {
        self.id = id
        self.name = name
        self.point = point
        self.width = width
        self.height = height
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
        guard address.data_bits == address_bits, address.value < maximum_addresses, data.data_bits == data_bits else { return CircuitData(data_bits: data_bits, value: HugeInt.zero) }
        if write_enable {
            values[address.value] = data.value
        }
        let value:HugeInt
        if output_enable {
            value = values[address.value] ?? HugeInt.zero
        } else {
            value = HugeInt.zero
        }
        return CircuitData(data_bits: data_bits, value: value)
    }
    
    public func write(address: HugeInt, value: HugeInt) {
        guard address < maximum_addresses else { return }
        values[address] = value
    }
}
