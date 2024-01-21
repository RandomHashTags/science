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
    
    func points(x: Int, y: Int, distance: Int) -> Set<GridPoint> {
        var set:Set<GridPoint> = []
        switch self {
        case .north:
            for i in 1..<distance {
                set.insert(GridPoint(x: x, y: y + i))
            }
            break
        case .south:
            for i in 1..<distance {
                set.insert(GridPoint(x: x, y: y - i))
            }
            break
        case .east:
            for i in 1..<distance {
                set.insert(GridPoint(x: x + i, y: y))
            }
            break
        case .west:
            for i in 1..<distance {
                set.insert(GridPoint(x: x, y: y - i))
            }
            break
        }
        return set
    }
}
