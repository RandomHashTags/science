//
//  UnitType.swift
//
//  Created by Evan Anderson on 4/6/23.
//

import Foundation

public protocol UnitType : CaseIterable {
    var symbol : String { get }
}
