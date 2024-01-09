//
//  Output.swift
//
//
//  Created by Evan Anderson on 1/7/24.
//

import Foundation
import HugeNumbers

public final class Output : CircuitComponent {
    public static let default_width:Int = 4
    public static let default_height:Int = 3
    
    public let id:UUID
    public var name:String?
    public var point:GridPoint
    public var width:Int
    public var height:Int
    public var facing:Direction
    
    public var data_bits:Int
    public var value:HugeInt
    
    init(id: UUID = UUID(), name: String? = nil, point: GridPoint, width: Int, height: Int, facing: Direction, data_bits: Int, value: HugeInt) {
        self.id = id
        self.name = name
        self.point = point
        self.width = width
        self.height = height
        self.facing = facing
        self.data_bits = data_bits
        self.value = value
    }
}
