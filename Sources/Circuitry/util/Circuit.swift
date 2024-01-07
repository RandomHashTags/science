//
//  Circuit.swift
//
//
//  Created by Evan Anderson on 1/7/24.
//

import Foundation

public final class Circuit {
    public var name:String
    public var components:[CircuitComponent]
    
    init(name: String, components: [CircuitComponent]) {
        self.name = name
        self.components = components
    }
}
