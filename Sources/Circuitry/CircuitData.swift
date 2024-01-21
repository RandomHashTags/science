//
//  CircuitData.swift
//
//
//  Created by Evan Anderson on 1/20/24.
//

import Foundation
import HugeNumbers

public final class CircuitData {
    public var data_bits:Int
    public var value:HugeInt
    
    public init(data_bits: Int, value: HugeInt) {
        self.data_bits = data_bits
        self.value = value
    }
}
