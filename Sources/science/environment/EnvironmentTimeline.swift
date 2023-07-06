//
//  EnvironmentTimeline.swift
//  
//
//  Created by Evan Anderson on 4/26/23.
//

import Foundation
import SwiftUnits

public struct EnvironmentTimeline : Hashable {
    public var starting_point:TimeUnit
    public var speed:TimeUnit
    public var end_after:TimeUnit
}
