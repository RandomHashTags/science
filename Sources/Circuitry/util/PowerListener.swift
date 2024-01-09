//
//  PowerListener.swift
//
//
//  Created by Evan Anderson on 1/8/24.
//

import Foundation

public protocol PowerListener : CircuitComponent {
    var powered : Bool { get }
    
    func set_powered(circuit: Circuit, powered: Bool)
}
