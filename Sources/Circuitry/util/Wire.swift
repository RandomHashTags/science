//
//  Wire.swift
//
//
//  Created by Evan Anderson on 1/7/24.
//

import Foundation

public final class Wire : CircuitComponent, PowerReceiver, PowerTransmitter {
    public let id:UUID
    public var name:String?
    public var point : GridPoint {
        didSet {
            power_in_point = point
        }
    }
    public var width : Int = 1 {
        didSet {
            width = 1
        }
    }
    public var height : Int = 1 {
        didSet {
            height = 1
        }
    }
    public var facing:Direction
    
    /// Measured in single X/Y grid points.
    public private(set) var distance:Int
    /// Equivalent to the start point.
    public private(set) var power_in_point:GridPoint?
    /// Equivalent to the end point.
    public private(set) var power_out_point:GridPoint?
    
    public private(set) var powered:Bool
    
    public init(id: UUID = UUID(), name: String? = nil, point: GridPoint, facing: Direction = Direction.east, distance: Int, powered: Bool = false) {
        self.id = id
        self.name = name
        self.point = point
        power_in_point = point
        self.facing = facing
        self.distance = distance
        
        power_out_point = facing.point(x: point.x, y: point.y, width: distance, height: distance)
        self.powered = powered
    }
    
    public func path_set() -> Set<GridPoint> {
        var set:Set<GridPoint> = facing.points(x: point.x, y: point.y, distance: distance)
        set.remove(power_in_point!)
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
