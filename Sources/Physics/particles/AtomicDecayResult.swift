//
//  AtomicDecayResult.swift
//  
//
//  Created by Evan Anderson on 5/17/23.
//

import Foundation
import SwiftUnits

public struct AtomicDecayResult : Hashable {
    public let atom_uuid:UUID
    public let atom_lifetime:TimeUnit
    public let iteration_count:UInt64
    /// The element identifier of the atom before decaying.
    public let decayed_from:String
    /// The element identifier that the atom decayed into.
    public let decayed_into:String
}
