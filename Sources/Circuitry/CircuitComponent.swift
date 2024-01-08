//
//  CircuitComponent.swift
//
//
//  Created by Evan Anderson on 1/7/24.
//

import Foundation

public protocol CircuitComponent {
    var id : UUID { get }
    var name : String? { get set }
    var point : GridPoint { get set }
    var facing : Direction { get set }
    
    mutating func move(circuit: Circuit, to point: GridPoint) -> Bool
}

public extension CircuitComponent {
    mutating func move(circuit: Circuit, to point: GridPoint) -> Bool {
        guard circuit.can_place(component: self, at: point) else { return false }
        self.point = point
        return true
    }
}
