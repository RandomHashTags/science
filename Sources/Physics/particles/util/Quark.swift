//
//  Quark.swift
//
//  Created by Evan Anderson on 4/5/23.
//

import Foundation
import HugeNumbers
import SwiftUnits

// https://www.britannica.com/science/quark
public struct Quark : ElementaryParticle {
    public typealias TargetMassUnit = EnergyUnit
    
    public static let up:Quark = Quark(elementary_charge: 2/3, spin: 1/2, mass: EnergyUnit(prefix: UnitPrefix.mega, type: EnergyUnitType.electronvolt, value: HugeFloat("2")))
    public static let down:Quark = Quark(elementary_charge: -1/3, spin: 1/2, mass: EnergyUnit(prefix: UnitPrefix.mega, type: EnergyUnitType.electronvolt, value: HugeFloat("5")))
    
    public static let charm:Quark = Quark(elementary_charge: 2/3, spin: 1/2, mass: EnergyUnit(prefix: UnitPrefix.mega, type: EnergyUnitType.electronvolt, value: HugeFloat("1000")))
    public static let strange:Quark = Quark(elementary_charge: -1/3, spin: 1/2, mass: EnergyUnit(prefix: UnitPrefix.mega, type: EnergyUnitType.electronvolt, value: HugeFloat("100")))
    
    public static let top:Quark = Quark(elementary_charge: 2/3, spin: 1/2, mass: EnergyUnit(prefix: UnitPrefix.mega, type: EnergyUnitType.electronvolt, value: HugeFloat("180000")))
    public static let bottom:Quark = Quark(elementary_charge: -1/2, spin: 1/2, mass: EnergyUnit(prefix: UnitPrefix.mega, type: EnergyUnitType.electronvolt, value: HugeFloat("4100")))
    
    public let quarks:[Quark]? = nil
    public let elementary_charge:Double
    public let spin:Double
    /// Constituent Mass
    public var mass:EnergyUnit
    
    public var opposite : Quark {
        switch self {
        case .up: return Quark.down
        case .down: return Quark.up
            
        case .charm: return Quark.strange
        case .strange: return Quark.charm
            
        default: return Quark.up
        }
    }
}
