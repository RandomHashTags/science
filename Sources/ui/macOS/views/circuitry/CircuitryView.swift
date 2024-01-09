//
//  CircuitryView.swift
//
//
//  Created by Evan Anderson on 1/9/24.
//

import Foundation
import SwiftUI
import Circuitry

struct CircuitryView : View {
    
    //@State private var circuit:Circuit
    @State private var simulating:Bool
    
    init(simulating: Bool) {
        //self.circuit = circuit
        self.simulating = simulating
    }
    
    public var body : some View {
        Text("CircuitryView")
    }
    
    func toggle_simulation() {
        simulating = !simulating
    }
}
