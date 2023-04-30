//
//  Environment.swift
//  
//
//  Created by Evan Anderson on 4/21/23.
//

import Foundation
import huge_numbers

public struct Environment : Hashable {
    public var fps:HugeInt {
        didSet {
            let fps_integer:UInt64 = fps.to_int()!
            gravity_per_frame = gravity.value / fps.to_float
            timeline_nanoseconds = 1_000_000_000 / fps_integer
        }
    }
    
    public var ambient_temperature:TemperatureUnit
    public var ambient_pressure:PressureUnit
    public var gravity:AccelerationUnit {
        didSet {
            gravity_per_frame = gravity.value / fps.to_float
        }
    }
    
    public var timeline:EnvironmentTimeline
    
    private var gravity_per_frame:HugeFloat
    private var timeline_nanoseconds:UInt64
    
    public var is_paused:Bool
    
    public var individual_atoms:[Atom]
    
    public init(_ settings: EnvironmentSettings) {
        let fps:HugeInt = settings.fps, fps_float:HugeFloat = fps.to_float, fps_integer:UInt64 = fps.to_int()!
        self.fps = fps
        ambient_temperature = settings.ambient_temperature
        ambient_pressure = settings.ambient_pressure
        gravity = settings.gravity
        
        timeline = EnvironmentTimeline(
            starting_point: TimeUnit(type: TimeUnitType.second, value: HugeFloat.zero),
            speed: settings.time_speed,
            end_after: TimeUnit(type: TimeUnitType.minute, value: HugeFloat("5"))
        )
        
        gravity_per_frame = gravity.value / fps_float
        timeline_nanoseconds = 1_000_000_000 / fps_integer
        is_paused = true
        individual_atoms = []
    }
    
    public mutating func pause() {
        guard !is_paused else { return }
        is_paused = true
    }
    public mutating func resume() async {
        guard is_paused else { return }
        is_paused = false
        await simulate()
    }
    
    public mutating func simulate() async {
        while !is_paused {
            print("Environment;simulate")
            tick()
            try? await Task.sleep(nanoseconds: timeline_nanoseconds)
        }
    }
    
    private mutating func tick() {
        apply_physics()
    }
    
    
    private mutating func apply_physics() {
        for index in individual_atoms.indices {
            let before:HugeFloat = individual_atoms[index].location.y
            individual_atoms[index].location.y -= gravity_per_frame
            print("Environment;apply_physics;before=" + before.description + ";after=" + individual_atoms[index].location.y.description)
        }
    }
    // TODO: support time skipping/jumping/browsing/indexing
    private mutating func apply_physics(multiplier: HugeFloat) {
    }
}
