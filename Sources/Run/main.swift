//
//  main.swift
//
//  Created by Evan Anderson on 4/4/23.
//

import science
import huge_numbers

print("main;test1")

var environment:Environment = Environment(
    EnvironmentSettings(
        fps: HugeInt("1"),
        ambient_temperature: MathmaticalConstant.standard_temperature,
        ambient_pressure: MathmaticalConstant.standard_pressure,
        gravity: MathmaticalConstant.gravity_standard,
        time_speed: TimeUnit(type: TimeUnitType.second, value: HugeFloat.one)
    )
)
environment.individual_atoms.append(ChemicalElement.hydrogen.atom)

Task {
    await environment.resume()
}
while true {
}
print("main;test2")
