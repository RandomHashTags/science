//
//  CircuitComponent.swift
//
//
//  Created by Evan Anderson on 1/7/24.
//

import Foundation

public protocol CircuitComponent {
    /// Measured in x grid points.
    static var default_width : Int { get }
    /// Measured in y grid points.
    static var default_height : Int { get }
    
    var id : UUID { get }
    var name : String? { get set }
    var point : GridPoint { get set }
    /// Measured in x grid points.
    var width : Int { get set }
    /// Measured in y grid points.
    var height : Int { get set }
    
    var facing : Direction { get set }
    
    mutating func move(circuit: Circuit, to point: GridPoint) -> Bool
    mutating func rotate(circuit: Circuit, facing direction: Direction) -> Bool
}

public extension CircuitComponent {
    mutating func move(circuit: Circuit, to point: GridPoint) -> Bool {
        guard circuit.can_place(component: self, at: point) else { return false }
        self.point = point
        return true
    }
    
    mutating func rotate(circuit: Circuit, facing direction: Direction) -> Bool { // TODO: finish
        //self.facing = facing
        return true
    }
}
