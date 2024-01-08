//
//  Wire.swift
//
//
//  Created by Evan Anderson on 1/7/24.
//

import Foundation

public final class Wire : CircuitComponent, Powerable {
    public let id:UUID
    public var name:String?
    public var point:GridPoint
    public var facing : Direction = Direction.north {
        didSet {
            facing = Direction.north
        }
    }
    
    public var end_point:GridPoint
    public var intersections:[GridPoint]
    
    public private(set) var powered:Bool
    
    init(id: UUID = UUID(), name: String? = nil, point: GridPoint, end_point: GridPoint, intersections: [GridPoint], powered: Bool) {
        self.id = id
        self.name = name
        self.point = point
        self.end_point = end_point
        self.intersections = intersections
        self.powered = powered
    }
    
    public func path_set() -> Set<GridPoint> { // TODO: consider intersections, overlaps, etc
        var set:Set<GridPoint> = []
        
        let x1:Int = point.x, x2:Int = end_point.x
        let y1:Int = point.y, y2:Int = end_point.y
        
        let minimum_x:Int = min(x1, x2)
        let maximum_x:Int = max(x1, x2)
        for x in minimum_x..<maximum_x {
            set.insert(GridPoint(x: x, y: y1))
        }
        
        let minimum_y:Int = min(y1, y2)
        let maximum_y:Int = max(y1, y2)
        for y in minimum_y..<maximum_y {
            set.insert(GridPoint(x: x1, y: y))
        }
        
        set.remove(point)
        set.remove(end_point)
        return set
    }
    
    public func set_powered(circuit: Circuit, powered: Bool) {
        guard self.powered != powered else { return }
        self.powered = powered
        
        let path:Set<GridPoint> = path_set()
        let components_attached:[Powerable] = circuit.components.filter({ path.contains($0.point) && $0 is Powerable }) as! [Powerable]
        for component in components_attached {
            component.set_powered(circuit: circuit, powered: powered)
        }
    }
}
