//
//  Arithmetic.swift
//
//
//  Created by Evan Anderson on 1/7/24.
//

import Foundation
import HugeNumbers

public struct Arithmetic : CircuitComponent {
    public var name:String
    public var point:GridPoint
    
    public var type:ArithmeticType
    public var data_bits:Int
    
    public func compute(left: HugeInt, right: HugeInt) -> HugeInt {
        switch type {
        case .add: return left + right
        case .subtract: return left - right
        case .multiply: return left * right
        case .divide: return left / right
        }
    }
}
