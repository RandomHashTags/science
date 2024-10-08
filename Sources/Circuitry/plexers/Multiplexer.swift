//
//  Multiplexer.swift
//
//
//  Created by Evan Anderson on 1/8/24.
//

import Foundation
import SwiftUnits

public final class Multiplexer : CircuitComponent {
    public let id:UUID
    public var name:String?
    public var point:GridPoint
    public var width:Int
    public var height:Int
    public var propagation_delay:TimeUnit
    public var facing:Direction
    
    public var select_bits:Int
    public var data_bits:Int
    
    public private(set) var output:[Bool]
    
    public init(id: UUID = UUID(), name: String? = nil, point: GridPoint, width: Int = 4, height: Int = 4, propagation_delay: TimeUnit, facing: Direction = Direction.east, select_bits: Int, data_bits: Int) {
        self.id = id
        self.name = name
        self.point = point
        self.width = width
        self.height = height
        self.propagation_delay = propagation_delay
        self.facing = facing
        
        self.select_bits = select_bits
        self.data_bits = data_bits
        self.output = [Bool].init(repeating: false, count: data_bits)
    }
}
