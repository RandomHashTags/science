//
//  Wire.swift
//
//
//  Created by Evan Anderson on 1/7/24.
//

import Foundation

public final class Wire : CircuitComponent {
    public var name:String
    public var point:GridPoint
    public var end_point:GridPoint
    
    public var intersections:[GridPoint]
}
