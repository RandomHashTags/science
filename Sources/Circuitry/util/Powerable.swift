//
//  Powerable.swift
//
//
//  Created by Evan Anderson on 1/8/24.
//

import Foundation

public protocol Powerable {
    var point : GridPoint { get }
    var powered : Bool { get }
    
    func set_powered(circuit: Circuit, powered: Bool)
}
