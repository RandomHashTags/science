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
    }
}
extension CircuitryTests {
    func test_simulation() {
        let circuit:Circuit = Circuit(point: GridPoint(x: 0, y: 0), components: [])
        
        let clock:Clock = Clock(point: GridPoint(x: 5, y: 5), lowest_frequency: FrequencyUnit(type: FrequencyUnitType.hertz, value: "1"), highest_frequency: FrequencyUnit(type: FrequencyUnitType.hertz, value: "1"))
        circuit.components.append(clock)
        
        let connected_wire:Wire = Wire(point: GridPoint(x: 8, y: 5), distance: 10)
        circuit.components.append(connected_wire)
        
        let connected_output:Output = Output(point: GridPoint(x: 17, y: 5), data_bits: 1)
        circuit.components.append(connected_output)
        
        let unconnected_wire:Wire = Wire(point: GridPoint(x: 0, y: 0), distance: 1)
        circuit.components.append(unconnected_wire)
        
        circuit.simulate()
        XCTAssert(clock.powered)
        XCTAssert(connected_wire.powered)
        XCTAssert(connected_output.powered)
        XCTAssertEqual(connected_output.data.integer, HugeInt.one)
        XCTAssert(!unconnected_wire.powered)
        
        circuit.simulate()
        XCTAssert(!clock.powered)
        XCTAssert(!connected_wire.powered)
        XCTAssert(!connected_output.powered)
        XCTAssertEqual(connected_output.data.integer, HugeInt.zero)
        XCTAssert(!unconnected_wire.powered)
    }
}

extension CircuitryTests {
    func test_wire() {
        let wire:Wire = Wire(point: GridPoint(x: 10, y: 10), distance: 5)
        
        let expected_path:Set<GridPoint> = [
            GridPoint(x: 11, y: 10),
            GridPoint(x: 12, y: 10),
            GridPoint(x: 13, y: 10),
            GridPoint(x: 14, y: 10)
        ]
        XCTAssertEqual(wire.path_set(), expected_path)
    }
}
extension CircuitryTests {
    func test_bit_extender() {
        let circuit:Circuit = Circuit(point: GridPoint(x: 0, y: 0), components: [])
        let clock:Clock = Clock(point: GridPoint(x: 5, y: 5), lowest_frequency: FrequencyUnit(type: FrequencyUnitType.hertz, value: "1"), highest_frequency: FrequencyUnit(type: FrequencyUnitType.hertz, value: "1"))
        circuit.components.append(clock)
        
        let wire:Wire = Wire(point: GridPoint(x: 8, y: 5), distance: 3)
        circuit.components.append(wire)
        
        let extender:BitExtender = BitExtender(point: GridPoint(x: 10, y: 5), type: BitExtensionType.one, bits_in: 1, bits_out: 8)
        circuit.components.append(extender)
        
        circuit.simulate()
        XCTAssert(clock.powered)
        XCTAssert(wire.powered)
        XCTAssert(extender.powered)
        XCTAssertEqual(extender.value.binary, [true, true, true, true, true, true, true, true])
        XCTAssertEqual(extender.value.integer, HugeInt("255"))
        circuit.simulate()
        
        extender.type = .zero
        circuit.simulate()
        XCTAssertEqual(extender.value.binary, [false, false, false, false, false, false, false, true])
        XCTAssertEqual(extender.value.integer, HugeInt("1"))
        circuit.simulate()
    }
}
extension CircuitryTests {
    func test_splitter_direction() {
        let splitter:Splitter = Splitter(point: GridPoint(x: 10, y: 10), fan_out: 2, bits_in: 2, bits_out: 2)
        var expected_points:Set<GridPoint> = [
            GridPoint(x: 13, y: 13),
            GridPoint(x: 13, y: 12)
        ]
        XCTAssertEqual(splitter.output_points, expected_points)
        
        splitter.facing = .west
        expected_points = [
            GridPoint(x: 10, y: 13),
            GridPoint(x: 10, y: 12)
        ]
        XCTAssertEqual(splitter.output_points, expected_points)
        
        splitter.facing = .north
        expected_points = [
            GridPoint(x: 10, y: 13),
            GridPoint(x: 11, y: 13)
        ]
        XCTAssertEqual(splitter.output_points, expected_points)
        
        splitter.facing = .south
        expected_points = [
            GridPoint(x: 10, y: 10),
            GridPoint(x: 11, y: 10)
        ]
        XCTAssertEqual(splitter.output_points, expected_points)
        
        
        splitter.facing = .east
        splitter.fan_out = 5
        expected_points = [
            GridPoint(x: 13, y: 16),
            GridPoint(x: 13, y: 15),
            GridPoint(x: 13, y: 14),
            GridPoint(x: 13, y: 13),
            GridPoint(x: 13, y: 12)
        ]
        XCTAssertEqual(splitter.output_points, expected_points)
    }
}

extension CircuitryTests {
    func test_tunnel() {
        let circuit:Circuit = Circuit(point: GridPoint(x: 0, y: 0), components: [])
        let clock:Clock = Clock(point: GridPoint(x: 5, y: 5), lowest_frequency: FrequencyUnit(type: FrequencyUnitType.hertz, value: "1"), highest_frequency: FrequencyUnit(type: FrequencyUnitType.hertz, value: "1"))
        circuit.components.append(clock)
        
        let wire:Wire = Wire(point: GridPoint(x: 8, y: 5), distance: 3)
        circuit.components.append(wire)
        
        let extender:BitExtender = BitExtender(point: GridPoint(x: 10, y: 5), type: BitExtensionType.sign, bits_in: 1, bits_out: 8)
        circuit.components.append(extender)
        
        let tunnel_name:String = "bingbong"
        let tunnel_bits:Int = 8
        let tunnel_transmitter:Tunnel = Tunnel(name: tunnel_name, point: GridPoint(x: 18, y: 5), data_bits: tunnel_bits)
        
        let tunnel_receiver1:Tunnel = Tunnel(name: tunnel_name, point: GridPoint(x: 30, y: 30), facing: .east, data_bits: tunnel_bits)
        let tunnel_receiver1_wire:Wire = Wire(point: GridPoint(x: 33, y: 30), facing: .south, distance: 3)
        
        let tunnel_receiver2:Tunnel = Tunnel(name: tunnel_name, point: GridPoint(x: 40, y: 40), facing: .east, data_bits: tunnel_bits)
        let tunnel_receiver3:Tunnel = Tunnel(name: tunnel_name, point: GridPoint(x: 50, y: 50), facing: .east, data_bits: tunnel_bits)
        
        circuit.components.append(tunnel_transmitter)
        circuit.components.append(tunnel_receiver1)
        circuit.components.append(tunnel_receiver1_wire)
        circuit.components.append(tunnel_receiver2)
        circuit.components.append(tunnel_receiver3)
        
        let output1:Output = Output(point: GridPoint(x: 33, y: 28), data_bits: tunnel_bits)
        circuit.components.append(output1)
        
        circuit.simulate()
        
        XCTAssert(clock.powered)
        XCTAssert(wire.powered)
        XCTAssert(extender.powered)
        XCTAssert(output1.powered)
        
        XCTAssert(tunnel_transmitter.powered)
        XCTAssert(tunnel_receiver1.powered)
        XCTAssert(tunnel_receiver1_wire.powered)
        XCTAssert(tunnel_receiver2.powered)
        XCTAssert(tunnel_receiver3.powered)
        XCTAssertEqual(output1.data.integer, HugeInt("255"))
        
        circuit.simulate()
    }
}

extension CircuitryTests {
    func test_ram() {
        let address_bits:Int = 64, data_bits:Int = 32
        let ram:RAM = RAM(point: GridPoint(x: 0, y: 0), type: MemoryType.volatile, address_bits: address_bits, data_bits: data_bits)
        XCTAssertEqual(ram.maximum_addresses, HugeInt("18446744073709551616"))
        XCTAssertEqual(ram.values.count, 0)
        
        var address:HugeInt = HugeInt("5"), write_value:HugeInt = HugeInt("8723")
        
        // MARK: Valid address & data
        var value:CircuitData = ram.power(address: CircuitData(bits: address_bits, value: address), data: CircuitData(bits: data_bits, value: write_value), write_enable: true, output_enable: true)
        XCTAssertEqual(value.bits, data_bits)
        XCTAssertEqual(value.integer, write_value)
        XCTAssertEqual(HugeInt(ram.values.count), HugeInt.one)
        
        // MARK: Invalid address
        value = ram.power(address: CircuitData(bits: address_bits-1, value: address), data: CircuitData(bits: data_bits, value: write_value), write_enable: true, output_enable: true)
        XCTAssertEqual(value.integer, HugeInt.zero)
        XCTAssertEqual(HugeInt(ram.values.count), HugeInt.one)
        
        // MARK: Invalid data
        value = ram.power(address: CircuitData(bits: address_bits, value: address), data: CircuitData(bits: data_bits-1, value: write_value), write_enable: true, output_enable: true)
        XCTAssertEqual(value.integer, HugeInt.zero)
        XCTAssertEqual(HugeInt(ram.values.count), HugeInt.one)
        
        // MARK: Write disable, output enable
        address -= 1
        write_value += 1
        value = ram.power(address: CircuitData(bits: address_bits, value: address), data: CircuitData(bits: data_bits, value: write_value), write_enable: false, output_enable: true)
        XCTAssertEqual(value.integer, HugeInt.zero)
        XCTAssertEqual(HugeInt(ram.values.count), HugeInt.one)
        
        // MARK: Write enable, output disable
        address -= 1
        write_value += 1
        value = ram.power(address: CircuitData(bits: address_bits, value: address), data: CircuitData(bits: data_bits, value: write_value), write_enable: true, output_enable: false)
        XCTAssertEqual(value.integer, HugeInt.zero)
        XCTAssertEqual(HugeInt(ram.values.count), HugeInt("2"))
        
        XCTAssertEqual(ram.values[HugeInt("5")], HugeInt("8723"))
        XCTAssertEqual(ram.values[HugeInt("4")] ?? HugeInt.zero, HugeInt.zero)
        XCTAssertEqual(ram.values[HugeInt("3")], HugeInt("8725"))
    }
}
