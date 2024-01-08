//
//  Clock.swift
//
//
//  Created by Evan Anderson on 1/7/24.
//

import Foundation
import SwiftUnits

public final class Clock : CircuitComponent {
    public let id:UUID
    public var name:String?
    public var point:GridPoint
    public var facing:Direction
    
    public var output_point:GridPoint
    
    public private(set) var powering:Bool
    public var lowest_frequency:FrequencyUnit
    public var highest_frequency:FrequencyUnit
    
    init(id: UUID = UUID(), name: String? = nil, point: GridPoint, facing: Direction, output_point: GridPoint, powering: Bool, lowest_frequency: FrequencyUnit, highest_frequency: FrequencyUnit) {
        self.id = id
        self.name = name
        self.point = point
        self.facing = facing
        self.output_point = output_point
        self.powering = powering
        self.lowest_frequency = lowest_frequency
        self.highest_frequency = highest_frequency
    }
    
    public func tick(circuit: Circuit) {
        powering = !powering
        
        let wires:[Wire] = circuit.wires
        if let circuit_wire:Wire = wires.first(where: { $0.point == output_point }) {
            circuit_wire.set_powered(circuit: circuit, powered: powering)
        }
    }
}
