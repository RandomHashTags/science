//
//  HugeNumbersExtensions.swift
//
//
//  Created by Evan Anderson on 1/23/24.
//

import Foundation
import HugeNumbers

package extension HugeInt {
    
    
    var binary : (negative: Bool, binary: [Bool]) {
        let binary:[Bool]
        if let integer:UInt64 = to_int() {
            let binary_string:String = String(integer, radix: 2)
            binary = binary_string.map({ $0 == "1" })
        } else {
            binary = [Bool].init(repeating: false, count: 5) // TODO: fix
        }
        return (is_negative, binary)
    }
    
}
