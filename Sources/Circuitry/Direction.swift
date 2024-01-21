//
//  Direction.swift
//
//
//  Created by Evan Anderson on 1/7/24.
//

import Foundation

public enum Direction {
    case north
    case south
    case east
    case west
    
    func point(x: Int, y: Int, width: Int, height: Int) -> GridPoint {
        switch self {
        case .north: return GridPoint(x: x, y: y + height)
        case .south: return GridPoint(x: x, y: y - height)
        case .east: return GridPoint(x: x + width, y: y)
        case .west: return GridPoint(x: x - width, y: y)
        }
    }
}
