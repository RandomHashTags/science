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
import SwiftUnits

final class CircuitryTests : XCTestCase {
    func testExample() {
        let ram:RAM = RAM(point: GridPoint(x: 0, y: 0), type: MemoryType.volatile, address_bits: 67, data_bits: 32, read_enabled: false, write_enabled: false, values: [:])
        print("ram.maximum_addresses=\(ram.maximum_addresses)")
    }
    
    func test_simulation() {
        let circuit:Circuit = Circuit(point: GridPoint(x: 0, y: 0), components: [])
        
        let clock:Clock = Clock(point: GridPoint(x: 5, y: 5), lowest_frequency: FrequencyUnit(type: FrequencyUnitType.hertz, value: "1"), highest_frequency: FrequencyUnit(type: FrequencyUnitType.hertz, value: "1"))
        circuit.components.append(clock)
        
        let connected_wire:Wire = Wire(point: GridPoint(x: 8, y: 5), distance: 10)
        circuit.components.append(connected_wire)
        
        let unconnected_wire:Wire = Wire(point: GridPoint(x: 0, y: 0), distance: 1)
        circuit.components.append(unconnected_wire)
        
        circuit.simulate()
        XCTAssert(clock.powered)
        XCTAssert(connected_wire.powered)
        XCTAssert(!unconnected_wire.powered)
        
        circuit.simulate()
        XCTAssert(!clock.powered)
        XCTAssert(!connected_wire.powered)
        XCTAssert(!unconnected_wire.powered)
    }
}
