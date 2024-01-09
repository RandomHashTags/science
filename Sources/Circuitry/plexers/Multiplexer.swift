//
//  Multiplexer.swift
//
//
//  Created by Evan Anderson on 1/8/24.
//

import Foundation
import HugeNumbers

public final class Multiplexer : CircuitComponent {
    public static var default_width:Int = 4
    public static var default_height:Int = 4
    
    public let id:UUID
    public var name:String?
    public var point:GridPoint
    public var width:Int
    public var height:Int
    public var facing:Direction
    
    public var select_bits:Int
    public var data_bits:Int
    
    init(id: UUID = UUID(), name: String? = nil, point: GridPoint, width: Int, height: Int, facing: Direction, select_bits: Int, data_bits: Int) {
        self.id = id
        self.name = name
        self.point = point
        self.width = width
        self.height = height
        self.facing = facing
        self.select_bits = select_bits
        self.data_bits = data_bits
    }
}
