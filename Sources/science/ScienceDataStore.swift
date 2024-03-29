//
//  ScienceDataStore.swift
//  
//
//  Created by Evan Anderson on 5/5/23.
//

import Foundation
import HugeNumbers
import SwiftUnits

#if canImport(SwiftUI)
import SwiftUI

public final class ScienceDataStore : ObservableObject {
    public static var shared_instance:ScienceDataStore = ScienceDataStore()
    
    @Published public var active_environment:ScientificEnvironment = ScientificEnvironment(
        ScientificEnvironmentSettings(
            uuid: UUID(),
            fps: HugeInt(60),
            ambient_temperature: MathmaticalConstant.standard_temperature,
            ambient_pressure: MathmaticalConstant.standard_pressure,
            gravity: MathmaticalConstant.standard_gravity,
            time_speed: TimeUnit(type: TimeUnitType.second, value: HugeFloat.one)
        )
    )
    
    public init() {
    }
}
#else

// TODO: fix
public final class ScienceDataStore {
    public static var shared_instance:ScienceDataStore = ScienceDataStore()
    
    public init() {
    }
}

#endif
