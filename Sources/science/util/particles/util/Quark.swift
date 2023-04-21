//
//  Quark.swift
//
//  Created by Evan Anderson on 4/5/23.
//

import Foundation
import huge_numbers

// https://www.britannica.com/science/quark
struct Quark : ElementaryParticle {
    typealias TargetMassUnit = EnergyUnit
    
    static var up:Quark = Quark(elementary_charge: 2/3, mass: EnergyUnit(prefix: UnitPrefix.mega, type: EnergyUnitType.electronvolt, value: HugeFloat("2")))
    static var down:Quark = Quark(elementary_charge: -1/3, mass: EnergyUnit(prefix: UnitPrefix.mega, type: EnergyUnitType.electronvolt, value: HugeFloat("5")))
    
    static var charm:Quark = Quark(elementary_charge: 2/3, mass: EnergyUnit(prefix: UnitPrefix.mega, type: EnergyUnitType.electronvolt, value: HugeFloat("1000")))
    static var strange:Quark = Quark(elementary_charge: -1/3, mass: EnergyUnit(prefix: UnitPrefix.mega, type: EnergyUnitType.electronvolt, value: HugeFloat("100")))
    
    static var top:Quark = Quark(elementary_charge: 2/3, mass: EnergyUnit(prefix: UnitPrefix.mega, type: EnergyUnitType.electronvolt, value: HugeFloat("180000")))
    static var bottom:Quark = Quark(elementary_charge: -1/2, mass: EnergyUnit(prefix: UnitPrefix.mega, type: EnergyUnitType.electronvolt, value: HugeFloat("4100")))
    
    let quarks:[Quark]? = nil
    let elementary_charge:Double
    /// Constituent Mass
    var mass:EnergyUnit
    
    var opposite : Quark {
        switch self {
        case .up: return Quark.down
        case .down: return Quark.up
            
        case .charm: return Quark.strange
        case .strange: return Quark.charm
            
        default: return Quark.up
        }
    }
}
