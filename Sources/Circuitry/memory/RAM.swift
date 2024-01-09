//
//  RAM.swift
//
//
//  Created by Evan Anderson on 1/8/24.
//

import Foundation
import HugeNumbers

public final class RAM : CircuitComponent {
    public static let default_width:Int = 23
    public static let default_height:Int = 26
    
    public let id:UUID
    public var name:String?
    public var point:GridPoint
    public var width:Int
    public var height:Int
    public var facing:Direction
    
    public var type:MemoryType
    public var address_bit_width : Int {
        didSet {
            maximum_addresses = calculate_maximum_addresses()
        }
    }
    public private(set) var maximum_addresses:HugeInt
    public var data_bit_width:Int
    
    public var read_enabled:Bool
    public var write_enabled:Bool
    
    public private(set) var values:[HugeInt:HugeInt]
    
    package init(id: UUID = UUID(), name: String? = nil, point: GridPoint, width: Int, height: Int, facing: Direction, type: MemoryType, address_bit_width: Int, data_bit_width: Int, read_enabled: Bool, write_enabled: Bool, values: [HugeInt:HugeInt]) {
        self.id = id
        self.name = name
        self.point = point
        self.width = width
        self.height = height
        self.facing = facing
        self.type = type
        self.address_bit_width = address_bit_width
        self.maximum_addresses = HugeInt.zero
        self.data_bit_width = data_bit_width
        self.read_enabled = read_enabled
        self.write_enabled = write_enabled
        self.values = values
        
        self.maximum_addresses = calculate_maximum_addresses()
    }
    private func calculate_maximum_addresses() -> HugeInt {
        return HugeInt(2).to_the_power_of(UInt64(address_bit_width))
    }
    
    public func read(address: HugeInt) -> HugeInt? {
        guard read_enabled else { return nil }
        return values[address] ?? HugeInt.zero
    }
    
    public func write(address: HugeInt, value: HugeInt) {
        guard write_enabled && address < maximum_addresses else { return }
        values[address] = value
    }
}
