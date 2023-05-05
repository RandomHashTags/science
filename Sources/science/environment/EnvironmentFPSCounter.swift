//
//  EnvironmentFPSCounter.swift
//  
//
//  Created by Evan Anderson on 5/5/23.
//

import Foundation

public final class EnvironmentFPSCounter : ObservableObject {
    public var last_count:UInt64 = 0
    public var new_count:UInt64 = 0
}
