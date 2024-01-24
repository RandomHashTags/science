//
//  PowerReceiver.swift
//
//
//  Created by Evan Anderson on 1/8/24.
//

import Foundation

public protocol PowerReceiver {
    var powered : Bool { get }
    var power_in_point : GridPoint? { get }
    
    func receive_power(circuit: Circuit, powered: Bool, data: CircuitData)
}
