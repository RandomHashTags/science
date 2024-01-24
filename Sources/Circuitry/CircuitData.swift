//
//  CircuitData.swift
//
//
//  Created by Evan Anderson on 1/20/24.
//

import Foundation
import HugeNumbers
import ScienceUtilities

public struct CircuitData {
    public var bits:Int
    public var is_negative:Bool
    public var binary:[Bool]
    
    public var integer : HugeInt {
        guard bits > 64 else {
            let binary_string:String = binary.map({ $0 ? "1" : "0" }).joined()
            let number:UInt64 = UInt64.init(binary_string, radix: 2) ?? 0
            return HugeInt((is_negative ? "-" : "") + "\(number)")
        }
        return HugeInt.zero // TODO: fix
    }
    
    public init(bits: Int, is_negative: Bool = false, binary: [Bool]) {
        self.bits = bits
        self.is_negative = is_negative
        self.binary = binary
    }
    public init(bits: Int, value: Bool) {
        self.bits = bits
        is_negative = false
        self.binary = [Bool].init(repeating: value, count: bits)
    }
    public init(bits: Int, value: HugeInt) {
        self.bits = bits
        (is_negative, binary) = value.binary
    }
}
