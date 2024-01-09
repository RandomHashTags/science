//
//  Wire.swift
//
//
//  Created by Evan Anderson on 1/7/24.
//

import Foundation

public final class Wire : CircuitComponent, PowerReceiver, PowerTransmitter {
    public static let default_width:Int = 1
    public static let default_height:Int = 1
    
    public let id:UUID
    public var name:String?
    public var point : GridPoint {
        didSet {
            power_in_point = point
        }
    }
    public var width:Int
    public var height:Int
    public var facing : Direction = Direction.north {
        didSet {
            facing = Direction.north
        }
    }
    
    /// Equivalent to the start point.
    public private(set) var power_in_point:GridPoint?
    /// Equivalent to the end point.
    public private(set) var power_out_point:GridPoint?
    public var intersections:[GridPoint]
    
    public private(set) var powered:Bool
    
    init(id: UUID = UUID(), name: String? = nil, point: GridPoint, width: Int, height: Int, facing: Direction, power_out_point: GridPoint, intersections: [GridPoint], powered: Bool) {
        self.id = id
        self.name = name
        self.point = point
        power_in_point = point
        self.width = width
        self.height = height
        self.facing = facing
        self.power_out_point = power_out_point
        self.intersections = intersections
        self.powered = powered
    }
    
    public func path_set() -> Set<GridPoint> { // TODO: consider intersections, overlaps, etc
        var set:Set<GridPoint> = []
        
        let x1:Int = point.x, x2:Int = power_out_point!.x
        let y1:Int = point.y, y2:Int = power_out_point!.y
        
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
        
        set.remove(power_in_point!)
        set.remove(power_out_point!)
        return set
    }
    
    public func set_powered(circuit: Circuit, powered: Bool) {
        self.powered = powered
        
        let path:Set<GridPoint> = path_set()
        let components_attached:[PowerReceiver] = circuit.components.filter({ path.contains($0.point) && $0 is PowerReceiver }) as! [PowerReceiver]
        for component in components_attached {
            component.set_powered(circuit: circuit, powered: powered)
        }
    }
}
