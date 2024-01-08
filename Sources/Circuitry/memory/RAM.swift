//
//  RAM.swift
//
//
//  Created by Evan Anderson on 1/8/24.
//

import Foundation

public final class RAM : CircuitComponent {
    public let id:UUID
    public var name:String?
    public var point:GridPoint
    public var facing:Direction
    
    public var type:MemoryType
    public var address_bit_width:Int
    public var data_bit_width:Int
    
    public var read_enabled:Bool
    public var write_enabled:Bool
    
    public private(set) var values:[Int:Int]
    
    init(id: UUID = UUID(), name: String? = nil, point: GridPoint, facing: Direction, type: MemoryType, address_bit_width: Int, data_bit_width: Int, read_enabled: Bool, write_enabled: Bool, values: [Int:Int]) {
        self.id = id
        self.name = name
        self.point = point
        self.facing = facing
        self.type = type
        self.address_bit_width = address_bit_width
        self.data_bit_width = data_bit_width
        self.read_enabled = read_enabled
        self.write_enabled = write_enabled
        self.values = values
    }
    
    public func read(address: Int) -> Int? {
        guard read_enabled else { return nil }
        return values[address]
    }
    
    public func write(address: Int, value: Int) {
        guard write_enabled else { return }
        values[address] = value
    }
}
