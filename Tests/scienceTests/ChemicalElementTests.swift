//
//  ChemicalElementTests.swift
//  
//
//  Created by Evan Anderson on 7/23/23.
//

import Foundation
import XCTest
import Science
import Physics

final class ChemicalElementTests : XCTestCase {
    func test() {
        for element in ChemicalElement.allCases {
            let details:ChemicalElementDetails = element.details
        }
    }
    func test_isotopes() {
        for element in ChemicalElement.allCases {
            if let isotope_type:any ChemicalElementIsotope.Type = element.isotope_type {
                for isotope in isotope_type.allCases as! [any ChemicalElementIsotope] {
                    let _:ChemicalElementDetails = isotope.details
                }
            }
        }
    }
}
