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
        test_molecules()
        
        let photon:Photon = Photon(frequency: FrequencyUnit(type: .hertz, value: huge_float_one)), photon_energy:EnergyUnit = photon.energy
        print("scienceTests;photo energy at " + photon.frequency.value.description + " " + photon.frequency.type.symbol + "=" + String(describing: photon_energy))
        
        test_electrons()
        test_mathmatical_constants()
        test_unit_conversions()
    }
}
extension scienceTests {
    private func test_molecules() {
        let atom:Atom = ChemicalElement.silicon.atom
        let molecule:Molecule = Molecule(atoms: [atom, atom, atom, atom, atom])
        XCTAssert(molecule.molecular_formula.elementsEqual("Si" + 5.as_subscript))
    }
}
extension scienceTests {
    private func test_electrons() {
        test_electron_shell()
    }
    private func test_electron_shell() {
        XCTAssert(ChemicalElement.hydrogen.atom.electron_shells.count == 1)
        XCTAssert(ChemicalElement.helium.atom.electron_shells.count == 1)
        XCTAssert(ChemicalElement.lithium.atom.electron_shells.count == 2)
        XCTAssert(ChemicalElement.sodium.atom.electron_shells.count == 3)
    }
}
extension scienceTests {
    private func test_mathmatical_constants() {
    }
}
extension scienceTests {
    private func test_unit_conversions() {
        test_unit_conversion_mass_to_energy()
        test_unit_conversion_temperature()
    }
    private func test_unit_conversion_mass_to_energy() {
        let kilogram_to_energy:EnergyUnit = MassUnit(prefix: UnitPrefix.kilo, type: MassUnitType.gram, value: HugeFloat.one).to_joule().to_unit(unit: EnergyUnitType.electronvolt)
        XCTAssert(kilogram_to_energy == EnergyUnit(type: EnergyUnitType.electronvolt, value: HugeFloat("560958884538931987162813850074640384")))
        let joule_to_mass:MassUnit = kilogram_to_energy.to_kilograms()
        //XCTAssert(joule_to_mass == MassUnit(prefix: UnitPrefix.kilo, type: MassUnitType.gram, value: HugeFloat("1")), "test_unit_conversion_mass_to_energy;\(joule_to_mass)")
    }
    private func test_unit_conversion_temperature() {
        var result:TemperatureUnit = TemperatureUnit(type: TemperatureUnitType.fahrenheit, value: HugeFloat(string: "-40")).to_unit(unit: TemperatureUnitType.celsius)
        var expected_result:TemperatureUnit = TemperatureUnit(type: TemperatureUnitType.celsius, value: HugeFloat("-40"))
        XCTAssert(result == expected_result, "test_unit_conversion_temperature;result=\(result);expected_result=\(expected_result)")
    }
}
