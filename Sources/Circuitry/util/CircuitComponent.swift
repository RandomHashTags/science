//
//  CircuitComponent.swift
//
//
//  Created by Evan Anderson on 1/7/24.
//

import Foundation

public protocol CircuitComponent {
    var name : String { get set }
    var point : GridPoint { get set }
    var facing : Direction { get set }
}
