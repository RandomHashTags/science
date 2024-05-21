//
//  LogicGate.swift
//
//
//  Created by Evan Anderson on 1/7/24.
//

import Foundation
import SwiftUnits

public protocol LogicGate : CircuitComponent {
    var data_bits : Int { get set }
    var number_of_inputs : Int { get set }
}
