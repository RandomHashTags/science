//
//  CircuitComponent.swift
//
//
//  Created by Evan Anderson on 1/7/24.
//

import Foundation

public protocol CircuitComponent : AnyObject {
    var id : UUID { get }
    var name : String? { get set }
    /// Where this component is located in a grid; always the bottom left (the "anchor") point.
    var point : GridPoint { get set }
    /// Measured in x grid points.
    var width : Int { get set }
    /// Measured in y grid points.
    var height : Int { get set }
    
    var facing : Direction { get set }
        
    func move(circuit: Circuit, to point: GridPoint) -> Bool
    func rotate(circuit: Circuit, facing direction: Direction) -> Bool
}

public extension CircuitComponent {
    func move(circuit: Circuit, to point: GridPoint) -> Bool {
        guard circuit.can_place(component: self, at: point) else { return false }
        self.point = point
        return true
    }
    
    func rotate(circuit: Circuit, facing direction: Direction) -> Bool { // TODO: finish
        //self.facing = facing
        return true
    }
}
