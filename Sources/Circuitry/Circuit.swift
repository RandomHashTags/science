//
//  Circuit.swift
//
//
//  Created by Evan Anderson on 1/7/24.
//

import Foundation

public final class Circuit : CircuitComponent {
    public let id:UUID
    public var name:String?
    public var point:GridPoint
    public var width:Int
    public var height:Int
    public var facing : Direction = Direction.east {
        didSet {
            facing = Direction.east
        }
    }
    
    public var components:[CircuitComponent]
    public private(set) var simulating:Bool = false
    
    package init(id: UUID = UUID(), name: String? = nil, point: GridPoint, width: Int = 0, height: Int = 0, components: [CircuitComponent]) {
        self.id = id
        self.name = name
        self.point = point
        self.width = width
        self.height = height
        self.facing = Direction.east
        self.components = components
    }
    
    public var power_transmitters : [PowerTransmitter] {
        return components.filter({ $0 is PowerTransmitter }) as! [PowerTransmitter]
    }
    public var power_receivers : [PowerReceiver] {
        return components.filter({ $0 is PowerReceiver }) as! [PowerReceiver]
    }
    
    
    public func can_place(component: CircuitComponent, at point: GridPoint) -> Bool {
        return components.first(where: { $0.point == point }) == nil
    }
    
    public func simulate() {
        simulating = !simulating
        let transmitters:[PowerTransmitter] = components.filter({ $0 is PowerTransmitter && !($0 is Wire) }) as! [PowerTransmitter]
        for power_transmitter in transmitters {
            power_transmitter.set_powered(circuit: self, powered: simulating)
        }
    }
}
