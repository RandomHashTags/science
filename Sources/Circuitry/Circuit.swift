//
//  Circuit.swift
//
//
//  Created by Evan Anderson on 1/7/24.
//

import Foundation

public final class Circuit {
    public let id:UUID
    public var name:String?
    public var components:[CircuitComponent]
    
    init(id: UUID = UUID(), name: String?, components: [CircuitComponent]) {
        self.id = id
        self.name = name
        self.components = components
    }
    
    public var wires : [Wire] {
        return components.filter({ $0 is Wire }) as! [Wire]
    }
    
    
    public func can_place(component: CircuitComponent, at point: GridPoint) -> Bool {
        return components.first(where: { $0.point == point }) == nil
    }
}
