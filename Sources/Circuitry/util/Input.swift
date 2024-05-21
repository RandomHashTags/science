//
//  Input.swift
//
//
//  Created by Evan Anderson on 1/7/24.
//

import Foundation
import HugeNumbers
import SwiftUnits

public final class Input : CircuitComponent {
    public let id:UUID
    public var name:String?
    public var point:GridPoint
    public var width:Int
    public var height:Int
    public var propagation_delay:TimeUnit
    public var facing:Direction

    public var data:CircuitData
    
    init(id: UUID = UUID(), name: String? = nil, point: GridPoint, width: Int = 4, height: Int = 3, propagation_delay: TimeUnit, facing: Direction = Direction.east, data: CircuitData) {
        self.id = id
        self.name = name
        self.point = point
        self.width = width
        self.height = height
        self.propagation_delay = propagation_delay
        self.facing = facing
        
        self.data = data
    }
    
    public func power(data: CircuitData) {
        guard data.bits == self.data.bits else { return }
        self.data.binary = data.binary
    }
}
