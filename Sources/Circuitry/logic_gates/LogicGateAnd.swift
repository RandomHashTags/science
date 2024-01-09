//
//  LogicGateAnd.swift
//
//
//  Created by Evan Anderson on 1/7/24.
//

import Foundation
import SwiftUnits

public final class LogicGateAnd : LogicGate {
    public static let default_width:Int = 5
    public static let default_height:Int = 5
    
    public let id:UUID
    public var name:String?
    public var point:GridPoint
    public var width:Int
    public var height:Int
    public var facing:Direction
    
    public var number_of_inputs:Int
    public var data_bits:Int
    public var gate_delay:TimeUnit
    
    init(id: UUID = UUID(), name: String? = nil, point: GridPoint, width: Int, height: Int, facing: Direction, number_of_inputs: Int, data_bits: Int, gate_delay: TimeUnit) {
        self.id = id
        self.name = name
        self.point = point
        self.width = width
        self.height = height
        self.facing = facing
        self.number_of_inputs = number_of_inputs
        self.data_bits = data_bits
        self.gate_delay = gate_delay
    }
}
