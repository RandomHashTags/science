//
//  PowerReceiver.swift
//
//
//  Created by Evan Anderson on 1/8/24.
//

import Foundation

public protocol PowerReceiver : PowerListener {
    var power_in_point : GridPoint { get }
}
