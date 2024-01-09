//
//  PowerTransmitter.swift
//
//
//  Created by Evan Anderson on 1/8/24.
//

import Foundation

public protocol PowerTransmitter : PowerListener {
    var power_out_point : GridPoint { get }
}
