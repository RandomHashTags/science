//
//  Register.swift
//
//
//  Created by Evan Anderson on 1/8/24.
//

import Foundation

public final class Register : CircuitComponent {
    public static var default_width:Int = 8
    public static var default_height:Int = 9
    
    public let id:UUID
    public var name:String?
    public var point:GridPoint
    public var width:Int
    public var height:Int
    public var facing:Direction
    
    public var data_bits:Int
    
    public var write_enabled:Bool
    public var input_clock:Clock?
    
    public private(set) var value:Int
    
    init(id: UUID = UUID(), name: String? = nil, point: GridPoint, width: Int, height: Int, facing: Direction, data_bits: Int, write_enabled: Bool, input_clock: Clock? = nil, value: Int) {
        self.id = id
        self.name = name
        self.point = point
        self.width = width
        self.height = height
        self.facing = facing
        self.data_bits = data_bits
        self.write_enabled = write_enabled
        self.input_clock = input_clock
        self.value = value
    }
}
