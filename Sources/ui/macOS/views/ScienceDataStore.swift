//
//  ScienceDataStore.swift
//  
//
//  Created by Evan Anderson on 5/5/23.
//

import Foundation
import science
import huge_numbers
import SwiftUI

public final class ScienceDataStore : ObservableObject {
    static var shared_instance:ScienceDataStore = ScienceDataStore()
    
    @Published public var active_environment:ScientificEnvironment = ScientificEnvironment(
        ScientificEnvironmentSettings(
            uuid: UUID(),
            fps: HugeInt(is_negative: false, [0, 6]),
            ambient_temperature: MathmaticalConstant.standard_temperature,
            ambient_pressure: MathmaticalConstant.standard_pressure,
            gravity: MathmaticalConstant.gravity_standard,
            time_speed: TimeUnit(type: TimeUnitType.second, value: HugeFloat.one)
        )
    )
    
    public init() {
    }
}
