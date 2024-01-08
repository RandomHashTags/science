//
//  Arithmetic.swift
//
//
//  Created by Evan Anderson on 1/7/24.
//

import Foundation
import HugeNumbers

public struct Arithmetic : CircuitComponent {
    public static var default_width:Int = 4
    public static var default_height:Int = 4
    
    public let id:UUID
    public var name:String?
    public var point:GridPoint
    public var width: Int
    public var height: Int
    public var facing:Direction
    
    public var type:ArithmeticType
    public var data_bits:Int
    
    init(id: UUID = UUID(), name: String? = nil, point: GridPoint, width: Int, height: Int, facing: Direction, type: ArithmeticType, data_bits: Int) {
        self.id = id
        self.name = name
        self.point = point
        self.width = width
        self.height = height
        self.facing = facing
        self.type = type
        self.data_bits = data_bits
    }
    
    public func compute(left: HugeInt, right: HugeInt) -> HugeInt {
        switch type {
        case .add: return left + right
        case .subtract: return left - right
        case .multiply: return left * right
        case .divide: return (left / right).quotient
        }
    }
}
