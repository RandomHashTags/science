//
//  Splitter.swift
//
//
//  Created by Evan Anderson on 1/7/24.
//

import Foundation

public final class Splitter : CircuitComponent {
    public let id:UUID
    public var name:String?
    public var point:GridPoint
    public var width:Int
    public var height:Int
    public var facing:Direction
    
    public var fan_out : Int {
        didSet {
            if fan_out > oldValue {
                height += fan_out - oldValue
            } else {
                height -= oldValue - fan_out
            }
        }
    }
    public var bits_in:Int
    public var bits_out:Int
    
    public private(set) var values:[CircuitData]
    
    public init(id: UUID = UUID(), name: String? = nil, point: GridPoint, width: Int = 3, height: Int = 3, facing: Direction = Direction.east, fan_out: Int, bits_in: Int, bits_out: Int, values: [CircuitData] = []) {
        self.id = id
        self.name = name
        self.point = point
        self.width = width
        self.height = height
        self.facing = facing
        self.fan_out = fan_out
        self.bits_in = bits_in
        self.bits_out = bits_out
        self.values = values
    }
    
    public var output_points : Set<GridPoint> {
        let max_x:Int = point.x + width, max_y:Int = point.y + height
        var set:Set<GridPoint> = Set<GridPoint>.init(minimumCapacity: fan_out)
        for y in 0..<fan_out {
            set.insert(GridPoint(x: max_x, y: max_y - y))
        }
        return set
    }
    
    public func split(input: CircuitData) -> [CircuitData] { // TODO: finish
        var data:[CircuitData] = []
        
        values = data
        return data
    }
}
