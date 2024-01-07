//
//  LogicGateAnd.swift
//
//
//  Created by Evan Anderson on 1/7/24.
//

import Foundation
import SwiftUnits

public final class LogicGateAnd : LogicGate {
    public var name:String
    public var point:GridPoint
    public var facing:Direction
    
    public var number_of_inputs:Int
    public var data_bits:Int
    public var gate_delay:TimeUnit
    
    init(name: String, point: GridPoint, facing: Direction, number_of_inputs: Int, data_bits: Int, gate_delay: TimeUnit) {
        self.name = name
        self.point = point
        self.facing = facing
        self.number_of_inputs = number_of_inputs
        self.data_bits = data_bits
        self.gate_delay = gate_delay
    }
}
