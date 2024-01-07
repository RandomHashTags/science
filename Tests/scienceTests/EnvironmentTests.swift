//
//  EnvironmentTests.swift
//  
//
//  Created by Evan Anderson on 7/23/23.
//

import Foundation
import XCTest
import SwiftUnits
import HugeNumbers
import Science
import ScienceUtilities

final class EnvironmentTests : XCTestCase {
    func test_elapsed_time() {
        var elapsed_time:ElapsedTime = ElapsedTime()
        elapsed_time += TimeUnit(type: TimeUnitType.second, value: HugeFloat("25"))
        elapsed_time += TimeUnit(prefix: UnitPrefix.kilo, type: TimeUnitType.second, value: HugeFloat("1"))
        elapsed_time += TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("5"))
        elapsed_time += TimeUnit(prefix: UnitPrefix.zepto, type: TimeUnitType.second, value: HugeFloat("2"))
        elapsed_time += TimeUnit(prefix: UnitPrefix.giga, type: TimeUnitType.second, value: HugeFloat("8"))
        print("EnvironmentTests;test_elapsed_time;elapsed_time=\(elapsed_time)")
        
        XCTAssert(ElapsedTime([.second:[.normal:HugeFloat.one]]) == TimeUnit(type: TimeUnitType.second, value: HugeFloat.one))
    }
}
