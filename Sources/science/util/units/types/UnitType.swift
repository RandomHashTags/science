//
//  UnitType.swift
//
//  Created by Evan Anderson on 4/6/23.
//

import Foundation

public protocol UnitType : Identifiable, CaseIterable, Equatable, RawRepresentable where RawValue == String, ID == String {
    var symbol : String { get }
}
public extension UnitType {
    var id : String {
        return rawValue
    }
}
