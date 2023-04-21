//
//  Electron.swift
//
//  Created by Evan Anderson on 4/4/23.
//

import Foundation
import huge_numbers

struct Electron : ElementaryParticle {
    let elementary_charge:Double = -1
    var mass:MassUnit = MassUnit(prefix: UnitPrefix.kilo, type: MassUnitType.gram, value: HugeFloat("0.00000000000000000000000000000091093837015"))
}
