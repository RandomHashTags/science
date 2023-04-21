//
//  scienceTests.swift
//
//  Created by Evan Anderson on 4/4/23.
//

import XCTest
@testable import science
import huge_numbers

final class scienceTests: XCTestCase {
    func testExample() throws {
        let huge_float_one:HugeFloat = HugeFloat.one
        let atom:Atom = ChemicalElement.silicon.atom
        let molecule:Molecule = Molecule(atoms: [atom, atom, atom, atom, atom])
        print("scienceTests;atom electric charge=" + atom.elementary_charge.description + ";molecule molecular formulae=" + molecule.molecular_formula)
        
        let photon:Photon = Photon(frequency: FrequencyUnit(type: .hertz, value: huge_float_one)), photon_energy:EnergyUnit = photon.energy
        print("scienceTests;photo energy at " + photon.frequency.value.description + " " + photon.frequency.type.symbol + "=" + String(describing: photon_energy))
        
        print("scienceTests;planck_constant=" + MathmaticalConstant.planck_constant.description)
        
        let kilogram_to_energy:EnergyUnit = MassUnit(prefix: UnitPrefix.kilo, type: MassUnitType.gram, value: huge_float_one).to_joule().to_unit(unit: EnergyUnitType.electronvolt)
        print("scienceTests;kilogram_to_energy=\(kilogram_to_energy);")
        let joule_to_mass:MassUnit = kilogram_to_energy.to_kilograms()
        print("scienceTests;joule_to_mass=\(joule_to_mass)")
        
        print("scienceTests;1 kilogram to gram=\(UnitPrefix.kilo.convert_to(UnitPrefix.normal, value: huge_float_one))")
        
        print("scienceTests;hydrogen electron_shell.count=" + ChemicalElement.sodium.atom.electron_shells.count.description)
        
        test_unit_conversions()
    }
}
extension scienceTests {
}
extension scienceTests {
    private func test_unit_conversions() {
        test_unit_conversion_temperature()
    }
    private func test_unit_conversion_temperature() {
        var result:TemperatureUnit = TemperatureUnit(type: TemperatureUnitType.fahrenheit, value: HugeFloat(string: "-40")).to_unit(unit: TemperatureUnitType.celsius)
        var expected_result:TemperatureUnit = TemperatureUnit(type: TemperatureUnitType.celsius, value: HugeFloat("-40"))
        XCTAssert(result == expected_result, "test_unit_conversion_temperature;result=\(result);expected_result=\(expected_result)")
    }
}
