//
//  EnvironmentSettingsView.swift
//  
//
//  Created by Evan Anderson on 5/4/23.
//

import Foundation
import SwiftUI
import science
import huge_numbers

struct EnvironmentSettingsView : View {
    @State private var environment:ScientificEnvironment = ScientificEnvironment(
        EnvironmentSettings(
            fps: HugeInt("1"),
            ambient_temperature: MathmaticalConstant.standard_temperature,
            ambient_pressure: MathmaticalConstant.standard_pressure,
            gravity: MathmaticalConstant.gravity_standard,
            time_speed: TimeUnit(type: TimeUnitType.second, value: HugeFloat.one)
        )
    )
    
    var body: some View {
        Text("Environment Settings UI!")
        HStack {
            Spacer()
            Text("FPS")
            TextField("FPS", text: Binding<String>.init(get: {
                return environment.fps.description
            }, set: { value in
                var correct_value:String = value.filter({ $0.isNumber })
                if correct_value.isEmpty {
                    correct_value = "1"
                }
                environment.fps = HugeInt(correct_value)
            }))
            Spacer()
        }
        HStack {
            Spacer()
            Text("Gravity")
            TextField("Gravity", text: Binding<String>.init(get: {
                return environment.gravity.value.description
            }, set: { value in
                let correct_value:String = value.filter({ $0.isNumber || $0 == "." })
                environment.gravity.value = HugeFloat(correct_value)
            }))
            Menu {
                ForEach(AccelerationUnitType.allCases) { type in
                    let id:String = type.id
                    Button(id) {
                        environment.gravity.type = AccelerationUnitType(rawValue: id)!
                    }
                }
            } label: {
                Text(environment.gravity.type.id)
            }
            Spacer()
        }
        HStack {
            Spacer()
            Text("Ambient Temperature")
            Spacer()
            TextField("Ambient Temperature", text: Binding<String>.init(get: {
                return environment.ambient_temperature.value.description
            }, set: { value in
                let correct_value = value.filter({ $0.isNumber || $0 == "." })
                environment.ambient_temperature.value = HugeFloat(correct_value)
            }))
            Menu {
                ForEach(TemperatureUnitType.allCases) { type in
                    let id:String = type.id
                    Button(id) {
                        environment.ambient_temperature.type = TemperatureUnitType(rawValue: id)!
                    }
                }
            } label: {
                Text(environment.ambient_temperature.type.id)
            }
            Spacer()
        }
        HStack {
            Spacer()
            Text("Ambient Pressure")
            Spacer()
            TextField("Ambient Pressure", text: Binding<String>.init(get: {
                return environment.ambient_pressure.value.description
            }, set: { value in
                let correct_value = value.filter({ $0.isNumber || $0 == "." })
                environment.ambient_pressure.value = HugeFloat(correct_value)
            }))
            Menu {
                ForEach(PressureUnitType.allCases) { type in
                    let id:String = type.id
                    Button(id) {
                        environment.ambient_pressure.type = PressureUnitType(rawValue: id)!
                    }
                }
            } label: {
                Text(environment.ambient_pressure.type.id)
            }
            Spacer()
        }
        VStack {
            //Toggle("Gravity", isOn: $gravity_is_enabled).toggleStyle(.checkbox)
        }
    }
}
