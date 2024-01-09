//
//  Clock.swift
//
//
//  Created by Evan Anderson on 1/7/24.
//

import Foundation
import SwiftUnits

public final class Clock : PowerTransmitter {
    public static let default_width:Int = 3
    public static let default_height:Int = 3
    
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
    
    init(id: UUID = UUID(), name: String? = nil, point: GridPoint, width: Int, height: Int, facing: Direction, power_out_point: GridPoint, powered: Bool, lowest_frequency: FrequencyUnit, highest_frequency: FrequencyUnit) {
        self.id = id
        self.name = name
        self.point = point
        self.width = width
        self.height = height
        self.facing = facing
        self.power_out_point = power_out_point
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
    }
}
