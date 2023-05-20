//
//  scienceTests.swift
//
//  Created by Evan Anderson on 4/4/23.
//

import XCTest
@testable import science
import huge_numbers
import AppKit
import Kanna

final class scienceTests: XCTestCase {
    func testExample() async throws {
        let huge_float_one:HugeFloat = HugeFloat.one
        test_molecules()
        
        let photon:Photon = Photon(frequency: FrequencyUnit(type: .hertz, value: huge_float_one)), photon_energy:EnergyUnit = photon.to_energy()
        //print("scienceTests;photo energy at " + photon.frequency.value.description + " " + photon.frequency.type.symbol + "=" + String(describing: photon_energy))
        
        test_electrons()
        test_mathmatical_constants()
        UnitConversions().validate()
        test_chemical_elements()
        test_environment()
        
        return;
        await generate_isotope(ChemicalElement.arsenic)
    }
}
extension scienceTests {
    private func test_molecules() {
        let atom:Atom = ChemicalElement.silicon.details.atom
        let molecule:Molecule = Molecule(atoms: [atom, atom, atom, atom, atom])
        XCTAssert(molecule.molecular_formula.elementsEqual("Si" + 5.as_subscript))
    }
}
extension scienceTests {
    private func test_electrons() {
        test_electron_shell()
    }
    private func test_electron_shell() {
        XCTAssert(ChemicalElement.hydrogen.details.atom.electron_shells.count == 1)
        XCTAssert(ChemicalElement.helium.details.atom.electron_shells.count == 1)
        XCTAssert(ChemicalElement.lithium.details.atom.electron_shells.count == 2)
        XCTAssert(ChemicalElement.sodium.details.atom.electron_shells.count == 3)
    }
}
extension scienceTests {
    private func test_mathmatical_constants() {
    }
}

extension scienceTests {
    private func test_chemical_elements() {
        for element in ChemicalElement.allCases {
            let _:ChemicalElementDetails = element.details
        }
        
        test_chemical_element_isotopes()
    }
    private func test_chemical_element_isotopes() {
        for element in ChemicalElement.allCases {
            if let isotope_type:any ChemicalElementIsotope.Type = element.isotope_type {
                for isotope in isotope_type.allCases as! [any ChemicalElementIsotope] {
                    let _:ChemicalElementDetails = isotope.details
                }
            }
        }
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
    private func generate_isotope(_ element: ChemicalElement) async {
        guard let test:HTMLDocument = await request_html(url: "https://en.wikipedia.org/wiki/Isotopes_of_" + element.rawValue.replacingOccurrences(of: " ", with: "_")) else {
            return
        }
        let identifier:String = element.rawValue + "_"
        let wikitable:Kanna.XMLElement = test.css("table.wikitable")[1]
        let table_rows:XPathObject = wikitable.css("tbody tr")
        var cases:[String] = [], details:[String] = []
        var isomer_index:Int = 1
        var previous_neutron_count:String = element.details.atomic_number.description
        var previous_weight:String = element.details.standard_atomic_weight.description
        for row in table_rows {
            let tds:XPathObject = row.css("td")
            if tds.count > 4 {
                let number:String = tds[0].css("sup")[0].text!.filter({ $0 != "\n" })
                let is_isomer:Bool = number.contains("m")
                let isotope_identifier:String = identifier + number.components(separatedBy: "m")[0] + (is_isomer ? "_isomer_" + isomer_index.description : "")
                
                cases.append(isotope_identifier)
                
                var neutron_count:String = tds[2].text!.filter({ $0 != "\n" })
                var weight:String, half_life:String, decay_mode:String
                if neutron_count.contains("(") {
                    weight = previous_weight
                    half_life = tds[2].text!
                    decay_mode = tds[3].text!
                    neutron_count = previous_neutron_count
                } else {
                    previous_neutron_count = neutron_count
                    weight = String(tds[3].text!.split(separator: "(")[0])
                    half_life = tds[4].text!
                    decay_mode = tds[5].text!
                }
                weight = weight.filter({ $0 != "\n" })
                
                if weight.isEmpty {
                    weight = "0"
                }
                
                previous_weight = weight
                half_life = half_life.filter({ $0 != "\n" })
                decay_mode = decay_mode.split(separator: "(")[0].split(separator: "[")[0].filter({ $0 != "\n" })
                while decay_mode.last == " " {
                    decay_mode.removeLast()
                }
                
                switch decay_mode {
                case "p":
                    decay_mode = "AtomicDecayType.proton_emission(amount: 1)"
                    break
                case "2p":
                    decay_mode = "AtomicDecayType.proton_emission(amount: 2)"
                    break
                case "3p":
                    decay_mode = "AtomicDecayType.proton_emission(amount: 3)"
                    break
                case "4p":
                    decay_mode = "AtomicDecayType.proton_emission(amount: 4)"
                    break
                case "β−", "β−?":
                    decay_mode = "AtomicDecayType.beta_minus"
                    break
                case "β−β−":
                    decay_mode = "AtomicDecayType.beta_minus_double"
                    break
                case "β−, γ":
                    decay_mode = "AtomicDecayType.beta_minus_gamma"
                    break
                case "β−, n":
                    decay_mode = "AtomicDecayType.beta_minus_neutron_emission"
                    break
                case "β+":
                    decay_mode = "AtomicDecayType.beta_plus"
                    break
                case "β+, p":
                    decay_mode = "AtomicDecayType.beta_plus_proton_emission"
                    break
                case "IT":
                    decay_mode = "AtomicDecayType.isomeric_transition"
                    break
                case "EC":
                    decay_mode = "AtomicDecayType.electron_capture"
                    break
                default:
                    decay_mode = "nil"
                    break
                }
                
                let is_stable:Bool = half_life.lowercased().contains("stable")
                var detail_string:String = "case ." + isotope_identifier + ":\n    return ChemicalElementDetails(self, neutron_count: " + neutron_count + ", standard_atomic_weight: \"" + weight + "\""
                if decay_mode.isEmpty {
                    decay_mode = "nil"
                }
                if half_life.isEmpty || half_life.lowercased().elementsEqual("unknown") {
                    half_life = "nil"
                } else {
                    let opening_values:[Substring] = half_life.split(separator: "(")
                    let closing_values:[Substring] = half_life.split(separator: ")")
                    let target_time:String = opening_values[0].replacingOccurrences(of: " ", with: "")
                    var time_unit:String = closing_values.last!.split(separator: "[")[0].filter({ $0.isLetter })
                    switch time_unit {
                    case "ps":
                        half_life = "TimeUnit(prefix: UnitPrefix.pico, type: TimeUnitType.second, value: \"" + target_time + "\")"
                        break
                    case "ns":
                        half_life = "TimeUnit(prefix: UnitPrefix.nano, type: TimeUnitType.second, value: \"" + target_time + "\")"
                        break
                    case "μs":
                        half_life = "TimeUnit(prefix: UnitPrefix.micro, type: TimeUnitType.second, value: \"" + target_time + "\")"
                        break
                    case "ms":
                        half_life = "TimeUnit(prefix: UnitPrefix.milli, type: TimeUnitType.second, value: \"" + target_time + "\")"
                        break
                    case "s":
                        half_life = "TimeUnit(type: TimeUnitType.second, value: \"" + target_time + "\")"
                        break
                    case "min":
                        half_life = "TimeUnit(type: TimeUnitType.minute, value: \"" + target_time + "\")"
                        break
                    case "h":
                        half_life = "TimeUnit(type: TimeUnitType.hour, value: \"" + target_time + "\")"
                        break
                    case "d":
                        half_life = "TimeUnit(type: TimeUnitType.day, value: \"" + target_time + "\")"
                        break
                    case "y":
                        half_life = "TimeUnit(type: TimeUnitType.year, value: \"" + target_time + "\")"
                        break
                    default:
                        half_life = target_time + " " + time_unit
                        break
                    }
                }
                if !is_stable {
                    detail_string.append(", decay_mode: " + decay_mode + ", half_life: " + half_life)
                }
                detail_string.append(")")
                if weight.elementsEqual("0") || !is_stable && (decay_mode.elementsEqual("nil") || half_life.elementsEqual("nil")) {
                    detail_string.append(" // TODO: fix")
                }
                details.append(detail_string)
                
                if is_isomer {
                    isomer_index += 1
                } else {
                    isomer_index = 1
                }
            }
        }
        
        for value in cases {
            print("case " + value)
        }
        for value in details {
            print(value)
        }
    }
}

extension scienceTests {
    private func request_html(url: String) async -> HTMLDocument? {
        guard let url:URL = URL(string: url),
              let data:Data = await make_request(request: URLRequest(url: url)),
              let html:String = String(data: data, encoding: .utf8) else {
            return nil
        }
        return try? HTML(html: html, encoding: .utf8)
    }
    private func make_request(request: URLRequest) async -> Data? {
        return try? await withCheckedThrowingContinuation({ continuation in
            let dataTask:URLSessionDataTask = URLSession.shared.dataTask(with: request) { data, response, error in
                guard let data:Data = data, let _:URLResponse = response else {
                    let error:Error = error ?? URLError(.badServerResponse)
                    return continuation.resume(throwing: error)
                }
                continuation.resume(returning: data)
            }
            dataTask.resume()
        })
    }
}
