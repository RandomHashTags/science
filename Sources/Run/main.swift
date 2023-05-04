//
//  main.swift
//
//  Created by Evan Anderson on 4/4/23.
//

import science
import huge_numbers
import UserInterfaceMacOS

print("main;test1")

/*Task {
    var environment:Environment = Environment(
        EnvironmentSettings(
            fps: HugeInt("2"),
            ambient_temperature: MathmaticalConstant.standard_temperature,
            ambient_pressure: MathmaticalConstant.standard_pressure,
            gravity: MathmaticalConstant.gravity_standard,
            time_speed: TimeUnit(type: TimeUnitType.second, value: HugeFloat.one)
        )
    )
    environment.individual_atoms.append(ChemicalElement.hydrogen.atom)
    await environment.resume()
}*/
UserInterfaceMacOS.run()
print("main;test2")
let nanoseconds:UInt64 = TimeUnit(type: TimeUnitType.minute, value: HugeFloat("1")).to_unit(prefix: UnitPrefix.nano, unit: TimeUnitType.second).value.integer.to_int()!
try! await Task.sleep(nanoseconds: nanoseconds)
print("main;test3")
