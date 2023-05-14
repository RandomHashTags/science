//
//  PeriodicTableView.swift
//  
//
//  Created by Evan Anderson on 5/14/23.
//

import Foundation
import SwiftUI
import science

struct PeriodicTableView : View {
    
    let elements:[ChemicalElement]
    let on_tap:(ChemicalElement) -> Void
    
    init(elements: [ChemicalElement] = ChemicalElement.allCases, on_tap: @escaping (ChemicalElement) -> Void) {
        self.elements = elements
        self.on_tap = on_tap
    }
    
    var body: some View {
        VStack {
            let elements_count:Int = elements.count
            let elements_per_row:Int = 18
            let row_count:Int = (elements_count + elements_per_row) / elements_per_row
            ScrollView {
                ForEach(0..<row_count) { row_index in
                    HStack {
                        ForEach(0..<elements_per_row) { index in
                            let target_index:Int = (row_index * elements_per_row) + index
                            if target_index < elements_count {
                                ChemicalElementPeriodicTableView(element: elements[target_index], on_tap: on_tap)
                            }
                        }
                    }
                }
            }
        }
    }
}

struct ChemicalElementPeriodicTableView : View {
    
    let element:ChemicalElement
    let on_tap:(ChemicalElement) -> Void
    
    var body: some View {
        VStack {
            let details:ChemicalElementDetails = element.details
            Text(element.rawValue)
            Spacer()
            Text("\(details.atomic_number)")
            Text(details.symbol).bold()
            Text(details.standard_atomic_weight.description)
        }.frame(width: 90, height: 90).background(Color.blue).onTapGesture {
            on_tap(element)
        }
    }
}


struct ChemicalElementIsotopesView : View {
    let isotopes:[any ChemicalElementIsotope]
    let on_tap:(any ChemicalElementIsotope) -> Void
    
    var body: some View {
        VStack {
            let elements_count:Int = isotopes.count
            let elements_per_row:Int = 9
            let row_count:Int = (elements_count + elements_per_row) / elements_per_row
            ScrollView {
                ForEach(0..<row_count) { row_index in
                    HStack {
                        ForEach(0..<elements_per_row) { index in
                            let target_index:Int = (row_index * elements_per_row) + index
                            if target_index < elements_count {
                                ChemicalElementIsotopePeriodicTableView(element: isotopes[target_index], on_tap: on_tap)
                            }
                        }
                    }
                }
            }
        }
    }
}

struct ChemicalElementIsotopePeriodicTableView : View {
    
    let element:any ChemicalElementIsotope
    let on_tap:(any ChemicalElementIsotope) -> Void
    
    var body: some View {
        VStack {
            let details:ChemicalElementDetails = element.details
            Text((details.atomic_number + details.atom.nucleus.neutron_count).as_superscript + element.element.rawValue)
            Spacer()
            Text("Decay Mode: " + (details.decay_mode?.name ?? "Unknown"))
            Text("Half-life: " + (details.half_life?.description ?? "Unknown"))
        }.frame(width: 200, height: 100).background(Color.blue).onTapGesture {
            on_tap(element)
        }
    }
}

/*
struct PeriodicTableView_Previews : PreviewProvider {
    static var previews: some View {
        PeriodicTableView()
    }
}
*/
