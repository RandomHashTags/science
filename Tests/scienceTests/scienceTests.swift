//
//  scienceTests.swift
//
//  Created by Evan Anderson on 4/4/23.
//

import XCTest
@testable import science
import huge_numbers
import Metal
import MetalKit
import RendererMetal
import AppKit

final class scienceTests: XCTestCase {
    func testExample() throws {
        let huge_float_one:HugeFloat = HugeFloat.one
        test_molecules()
        
        let photon:Photon = Photon(frequency: FrequencyUnit(type: .hertz, value: huge_float_one)), photon_energy:EnergyUnit = photon.to_energy()
        //print("scienceTests;photo energy at " + photon.frequency.value.description + " " + photon.frequency.type.symbol + "=" + String(describing: photon_energy))
        
        test_electrons()
        test_mathmatical_constants()
        test_unit_conversions()
        test_environment()
        test_renderer()
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
        test_unit_conversion_density()
        test_unit_conversion_frequency()
        test_unit_conversion_mass()
        test_unit_conversion_temperature()
        
        test_unit_conversion_mass_to_energy()
    }
    private func test_unit_conversion_density() {
        var result:DensityUnit = DensityUnit(type: DensityUnitType.gram_per_cubic_centimetre, value: HugeFloat.one).to_unit(unit: DensityUnitType.kilogram_per_cubic_metre)
        var expected_result:DensityUnit = DensityUnit(type: DensityUnitType.kilogram_per_cubic_metre, value: HugeFloat("1000"))
        XCTAssert(result == expected_result, "test_unit_conversion_density;result=\(result);expected_result=\(expected_result)")
        
        result = expected_result.to_unit(unit: DensityUnitType.gram_per_cubic_centimetre)
        expected_result = DensityUnit(type: DensityUnitType.gram_per_cubic_centimetre, value: HugeFloat.one)
        XCTAssert(result == expected_result, "test_unit_conversion_density;result=\(result);expected_result=\(expected_result)")
    }
    private func test_unit_conversion_frequency() {
        var result:FrequencyUnit = FrequencyUnit(type: FrequencyUnitType.hertz, value: HugeFloat.one).to_unit(unit: FrequencyUnitType.wavelength_in_metres)
        var expected_result:FrequencyUnit = FrequencyUnit(type: FrequencyUnitType.wavelength_in_metres, value: HugeFloat("299792458"))
        XCTAssert(result == expected_result, "test_unit_conversion_frequency;result=\(result);expected_result=\(expected_result)")
        
        result = expected_result.to_unit(unit: FrequencyUnitType.hertz)
        expected_result = FrequencyUnit(type: FrequencyUnitType.hertz, value: HugeFloat.one)
        XCTAssert(result == expected_result, "test_unit_conversion_frequency;result=\(result);expected_result=\(expected_result)")
    }
    private func test_unit_conversion_mass() {
        var result:MassUnit = MassUnit(type: MassUnitType.gram, value: HugeFloat("1000000")).to_unit(unit: MassUnitType.tonne)
        var expected_result:MassUnit = MassUnit(type: MassUnitType.tonne, value: HugeFloat.one)
        XCTAssert(result == expected_result, "test_unit_conversion_mass;result=\(result);expected_result=\(expected_result)")
        
        result = expected_result.to_unit(unit: MassUnitType.gram)
        expected_result = MassUnit(type: MassUnitType.gram, value: HugeFloat("1000000"))
        XCTAssert(result == expected_result, "test_unit_conversion_mass;result=\(result);expected_result=\(expected_result)")
    }
    private func test_unit_conversion_temperature() {
        var result:TemperatureUnit = TemperatureUnit(type: TemperatureUnitType.fahrenheit, value: HugeFloat(string: "-40")).to_unit(unit: TemperatureUnitType.celsius)
        var expected_result:TemperatureUnit = TemperatureUnit(type: TemperatureUnitType.celsius, value: HugeFloat("-40"))
        XCTAssert(result == expected_result, "test_unit_conversion_temperature;result=\(result);expected_result=\(expected_result)")
    }
    
    private func test_unit_conversion_mass_to_energy() {
        let kilogram_to_joules:EnergyUnit = MassUnit(prefix: UnitPrefix.kilo, type: MassUnitType.gram, value: HugeFloat.one).to_energy()
        XCTAssert(kilogram_to_joules == EnergyUnit(type: EnergyUnitType.joule, value: HugeFloat("89875517873681764")))
        let kilogram_to_electronvolt:EnergyUnit = kilogram_to_joules.to_unit(unit: EnergyUnitType.electronvolt)
        XCTAssert(kilogram_to_electronvolt == EnergyUnit(type: EnergyUnitType.electronvolt, value: HugeFloat("560958884538931987162813850074640384")))
        let electronvolt_to_mass:MassUnit = kilogram_to_electronvolt.to_mass()
        XCTAssert(electronvolt_to_mass == MassUnit(prefix: UnitPrefix.kilo, type: MassUnitType.gram, value: HugeFloat("1")), "test_unit_conversion_mass_to_energy;joule_to_mass=\(electronvolt_to_mass.description)")
    }
}

extension scienceTests {
    private func test_environment() {
        test_environment_elapsed_time()
    }
    private func test_environment_elapsed_time() {
        var elapsed_time:ElapsedTime = ElapsedTime()
        elapsed_time += TimeUnit(type: TimeUnitType.second, value: HugeFloat("25"))
        elapsed_time += TimeUnit(prefix: UnitPrefix.kilo, type: TimeUnitType.second, value: HugeFloat("1"))
        elapsed_time += TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: HugeFloat("5"))
        elapsed_time += TimeUnit(prefix: UnitPrefix.zepto, type: TimeUnitType.second, value: HugeFloat("2"))
        elapsed_time += TimeUnit(prefix: UnitPrefix.giga, type: TimeUnitType.second, value: HugeFloat("8"))
        print("scienceTests;test_environment_elapsed_time;elapsed_time=" + elapsed_time.description)
        
        XCTAssert(ElapsedTime([.second:[.normal:HugeFloat.one]]) == TimeUnit(type: TimeUnitType.second, value: HugeFloat.one))
    }
}


extension scienceTests {
    private func test_renderer() {
        test_renderer_metal()
    }
    private func test_renderer_metal() {
        return; // TODO: fix
        let app:NSApplication = NSApplication.shared
        let delegate:MetalRendererDelegate = MetalRendererDelegate()
        app.delegate = delegate
        app.run()
    }
}
