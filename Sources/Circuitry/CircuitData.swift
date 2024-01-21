//
//  CircuitData.swift
//
//
//  Created by Evan Anderson on 1/20/24.
//

import Foundation
import HugeNumbers

public final class CircuitData {
    public var bits:Int
    public var value:HugeInt
    
    public init(bits: Int, value: HugeInt) {
        self.bits = bits
        self.value = value
    }
}
