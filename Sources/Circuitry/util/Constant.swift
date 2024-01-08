//
//  Constant.swift
//
//
//  Created by Evan Anderson on 1/7/24.
//

import Foundation

public final class Constant : CircuitComponent {
    public let id:UUID
    public var name:String?
    public var point:GridPoint
    public var facing:Direction
    
    public var value:Bool
    
    init(id: UUID = UUID(), name: String? = nil, point: GridPoint, facing: Direction, value: Bool) {
        self.id = id
        self.name = name
        self.point = point
        self.facing = facing
        self.value = value
    }
}
