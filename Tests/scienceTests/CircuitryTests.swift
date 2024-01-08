//
//  CircuitryTests.swift
//
//
//  Created by Evan Anderson on 1/8/24.
//

import Foundation
import XCTest
import Circuitry
import HugeNumbers

final class CircuitryTests : XCTestCase {
    func testExample() {
        let ram:RAM = RAM(point: GridPoint(x: 0, y: 0), width: 0, height: 0, facing: Direction.east, type: MemoryType.volatile, address_bit_width: HugeInt(64), data_bit_width: 32, read_enabled: false, write_enabled: false, values: [:])
        print("ram.maximum_addresses=\(ram.maximum_addresses)")
    }
}
