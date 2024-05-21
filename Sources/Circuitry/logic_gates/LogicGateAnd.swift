//
//  LogicGateAnd.swift
//
//
//  Created by Evan Anderson on 1/7/24.
//

import Foundation
import SwiftUnits

public final class LogicGateAnd : LogicGate {
    public let id:UUID
    public var name:String?
    public var point:GridPoint
    public var width:Int
    public var height:Int
    public var propagation_delay:TimeUnit
    public var facing:Direction
    
    public var number_of_inputs:Int
    public var data_bits:Int
    
    
    init(id: UUID = UUID(), name: String? = nil, point: GridPoint, width: Int = 5, height: Int = 5, propagation_delay: TimeUnit, facing: Direction = Direction.east, number_of_inputs: Int, data_bits: Int) {
        self.id = id
        self.name = name
        self.point = point
        self.width = width
        self.height = height
        self.propagation_delay = propagation_delay
        self.facing = facing

        self.number_of_inputs = number_of_inputs
        self.data_bits = data_bits
    }
}
