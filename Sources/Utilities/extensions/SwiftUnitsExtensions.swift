//
//  SwiftUnitsExtensions.swift
//
//  Created by Evan Anderson on 5/20/24.
//

import SwiftUnits

public extension TimeUnit {
    static let zero:TimeUnit = TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: "0")
}