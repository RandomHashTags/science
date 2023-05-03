//
//  Unit.swift
//
//  Created by Evan Anderson on 4/6/23.
//

import Foundation
import huge_numbers

public protocol Unit : Hashable, Comparable {
    associatedtype TargetUnitType : UnitType
    
    var prefix:UnitPrefix { get set }
    var type:TargetUnitType { get set }
    var value:HugeFloat { get set }
    
    init(type: TargetUnitType, value: HugeFloat)
    init(prefix: UnitPrefix, type: TargetUnitType, value: HugeFloat)
    
    mutating func convert_to_unit(_ unit: TargetUnitType)
    func convert_value_to_unit(_ unit: TargetUnitType) -> HugeFloat
    func convert_value_to_unit(prefix: UnitPrefix, _ unit: TargetUnitType) -> HugeFloat
    func to_unit(unit: TargetUnitType) -> Self
    func to_unit(prefix: UnitPrefix, unit: TargetUnitType) -> Self
}
public extension Unit {
    init(type: TargetUnitType, value: HugeFloat) {
        self.init(prefix: UnitPrefix.normal, type: type, value: value)
    }
    
    var symbol : String {
        return prefix.symbol + type.symbol
    }
    
    var description : String {
        return value.description + " " + symbol
    }
    
    mutating func convert_to_unit(_ unit: TargetUnitType) {
        // TODO: finish
    }
    
    func convert_value_to_unit(prefix: UnitPrefix, _ unit: TargetUnitType) -> HugeFloat {
        return self.prefix.convert_to(prefix, value: convert_value_to_unit(unit))
    }
    func to_unit(unit: TargetUnitType) -> Self {
        return to_unit(prefix: prefix, unit: unit)
    }
    func to_unit(prefix: UnitPrefix, unit: TargetUnitType) -> Self {
        let value:HugeFloat = convert_value_to_unit(prefix: prefix, unit)
        return Self.init(prefix: prefix, type: unit, value: value)
    }
}


/*
 Comparable
 */
public extension Unit {
    static func < (left: Self, right: Self) -> Bool {
        let left_prefix:UnitPrefix = left.prefix, right_prefix:UnitPrefix = right.prefix
        guard left_prefix == right_prefix else {
            return left_prefix.rawValue < right_prefix.rawValue
        }
        let left_type:TargetUnitType = left.type, right_type:TargetUnitType = right.type
        guard left_type == right_type else {
            return left.value < right.convert_value_to_unit(left_type)
        }
        return left.value < right.value
    }
    
    static func == (left: Self, right: Self) -> Bool {
        return left.prefix == right.prefix && left.type == right.type && left.value == right.value
    }
}
/*
 prefixes / postfixes
 */
public extension Unit {
    static prefix func - (item: Self) -> Self {
        return Self(type: item.type, value: -item.value)
    }
}
/*
 Multiplication
 */
public extension Unit {
    static func * (left: Self, right: Self) -> Self {
        let left_type:TargetUnitType = left.type
        let right_updated:Self = right.to_unit(prefix: left.prefix, unit: left_type)
        return Self(type: left_type, value: left.value * right_updated.value)
    }
}
public extension Unit {
    static func * (left: Self, right: HugeFloat) -> Self {
        var copy:Self = left
        copy.value *= right
        return copy
    }
    static func * (left: HugeFloat, right: Self) -> Self {
        var copy:Self = right
        copy.value *= left
        return copy
    }
}
