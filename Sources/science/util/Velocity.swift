//
//  Velocity.swift
//  
//
//  Created by Evan Anderson on 4/27/23.
//

import Foundation
import SwiftUnits

public struct Velocity : Hashable {
    public var x:SpeedUnit, y:SpeedUnit, z:SpeedUnit
}
public extension Velocity {
    static prefix func - (velocity: Velocity) -> Velocity {
        return Velocity(x: -velocity.x, y: -velocity.y, z: -velocity.z)
    }
}
