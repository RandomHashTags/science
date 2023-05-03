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
    public var elapsed_time:ElapsedTime
    
    private var gravity_per_frame:HugeFloat
    private var timeline_nanoseconds:UInt64
    private var elapsed_time_per_frame:TimeUnit
    
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
        elapsed_time = ElapsedTime()
        
        gravity_per_frame = gravity.value / fps_float
        timeline_nanoseconds = 1_000_000_000 / fps_integer
        elapsed_time_per_frame = TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("1000") / fps_float)
        
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
            tick()
            try? await Task.sleep(nanoseconds: timeline_nanoseconds)
        }
    }
    
    private mutating func tick() {
        apply_physics()
        update_time()
    }
    
    private mutating func update_time() {
        elapsed_time.add(elapsed_time_per_frame)
    }
    private mutating func apply_physics() {
        for index in individual_atoms.indices {
            individual_atoms[index].location.y -= gravity_per_frame
        }
    }
    // TODO: support time skipping/jumping/browsing/indexing
    private mutating func apply_physics(multiplier: HugeFloat) {
    }
}
