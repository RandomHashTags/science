//
//  Wire.swift
//
//
//  Created by Evan Anderson on 1/7/24.
//

import Foundation

public final class Wire : CircuitComponent {
    public var name:String
    public var point:GridPoint
    public var facing:Direction
    
    public var end_point:GridPoint
    public var intersections:[GridPoint]
    
    init(name: String, point: GridPoint, facing: Direction, end_point: GridPoint, intersections: [GridPoint]) {
        self.name = name
        self.point = point
        self.facing = facing
        self.end_point = end_point
        self.intersections = intersections
    }
}
