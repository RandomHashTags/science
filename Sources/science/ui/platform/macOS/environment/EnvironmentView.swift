//
//  EnvironmentView.swift
//  
//
//  Created by Evan Anderson on 5/4/23.
//

import Foundation
import SwiftUI
import science

struct EnvironmentView : View {
    @State private var gravity_is_enabled:Bool = true
    @State private var ambient_temperature:String = MathmaticalConstant.standard_temperature.value.description
    @State private var ambient_pressure:String = MathmaticalConstant.standard_pressure.value.description
    
    var body: some View {
        Text("Environment UI!")
        HStack {
            Spacer()
            Text("Ambient Temperature")
            Spacer()
            TextField("Ambient Temperature", text: Binding<String>.init(get: {
                return ambient_temperature
            }, set: { value in
                ambient_temperature = value
            }))
            Menu {
                ForEach(TemperatureUnitType.allCases) { type in
                    Button(type.id) {
                    }
                }
            } label: {
                Text("Temperature Unit")
            }
            Spacer()
        }
        HStack {
            Spacer()
            Text("Ambient Pressure")
            Spacer()
            TextField("Ambient Pressure", text: Binding<String>.init(get: {
                return ambient_pressure
            }, set: { value in
                ambient_pressure = value
            }))
            Menu {
                ForEach(PressureUnitType.allCases) { type in
                    Button(type.id) {
                    }
                }
            } label: {
                Text("Pressure Unit")
            }
            Spacer()
        }
        VStack {
            Toggle("Gravity", isOn: $gravity_is_enabled).toggleStyle(.checkbox)
        }
    }
}
