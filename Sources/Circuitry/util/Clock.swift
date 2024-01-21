//
//  Clock.swift
//
//
//  Created by Evan Anderson on 1/7/24.
//

import Foundation
import SwiftUnits

public final class Clock : PowerTransmitter {
    public let id:UUID
    public var name:String?
    public var point:GridPoint
    public var width:Int
    public var height:Int
    public var facing:Direction
    
    public private(set) var power_out_point:GridPoint?
    public private(set) var powered:Bool
    public var frequency:FrequencyUnit
    public var lowest_frequency:FrequencyUnit
    public var highest_frequency:FrequencyUnit
    
    public private(set) var simulation_task:Task<Void, Never>!
    public var on_tick:(() -> Void)?
    
    package init(id: UUID = UUID(), name: String? = nil, point: GridPoint, width: Int = 3, height: Int = 3, facing: Direction = Direction.east, powered: Bool = false, lowest_frequency: FrequencyUnit, highest_frequency: FrequencyUnit) {
        self.id = id
        self.name = name
        self.point = point
        self.width = width
        self.height = height
        self.facing = facing
        
        power_out_point = facing.point(x: point.x, y: point.y, width: width, height: height)
        self.powered = powered
        self.lowest_frequency = lowest_frequency
        self.highest_frequency = highest_frequency
        frequency = lowest_frequency
    }
    
    public func set_powered(circuit: Circuit, powered: Bool) {
        guard self.powered != powered else { return }
        self.powered = powered
        let receivers:[PowerReceiver] = circuit.power_receivers.filter({ $0.power_in_point == power_out_point })
        for receiver in receivers {
            receiver.set_powered(circuit: circuit, powered: powered)
        }
        if powered {
            simulation_task = Task {
                guard let nanoseconds:UInt64 = frequency.convert_value_to_unit(prefix: UnitPrefix.nano, FrequencyUnitType.hertz).integer.to_int() else {
                    return
                }
                do {
                    try await Task.sleep(nanoseconds: nanoseconds)
                } catch {
                }
                while self.powered {
                    tick(circuit: circuit, receivers: receivers)
                    do {
                        try await Task.sleep(nanoseconds: nanoseconds)
                    } catch {
                        print("Clock: simulation_task sleep error: \(error)")
                    }
                }
            }
        } else {
            simulation_task.cancel()
            simulation_task = nil
        }
    }
    
    private func tick(circuit: Circuit, receivers: [PowerReceiver]) {
        powered = !powered
        for receiver in receivers {
            receiver.set_powered(circuit: circuit, powered: powered)
        }
        on_tick?()
    }
}
