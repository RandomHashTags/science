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
        ScientificEnvironmentSettings(
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
        get_unit_view(title: "Gravity", types: AccelerationUnitType.allCases) {
            return environment.gravity.value.description
        } set_value: { corrected_value in
            environment.gravity.value = HugeFloat(corrected_value)
        } get_value_type: {
            return environment.gravity.type.id
        } set_value_type: { id in
            environment.gravity.type = AccelerationUnitType(rawValue: id)!
        }
        
        get_unit_view(title: "Ambient Temperature", types: TemperatureUnitType.allCases) {
            return environment.ambient_temperature.value.description
        } set_value: { corrected_value in
            environment.ambient_temperature.value = HugeFloat(corrected_value)
        } get_value_type: {
            return environment.ambient_temperature.type.id
        } set_value_type: { id in
            environment.ambient_temperature.type = TemperatureUnitType(rawValue: id)!
        }
        
        get_unit_view(title: "Ambient Pressure", types: PressureUnitType.allCases) {
            return environment.ambient_pressure.value.description
        } set_value: { corrected_value in
            environment.ambient_pressure.value = HugeFloat(corrected_value)
        } get_value_type: {
            return environment.ambient_pressure.type.id
        } set_value_type: { id in
            environment.ambient_pressure.type = PressureUnitType(rawValue: id)!
        }
    }
    
    private func get_unit_view<T: UnitType>(title: String, types: [T], get_value: @escaping () -> String, set_value: @escaping (String) -> Void, get_value_type: @escaping () -> String, set_value_type: @escaping (String) -> Void) -> some View {
        HStack {
            Spacer()
            Text(title)
            Spacer()
            TextField(title, text: Binding<String>.init(get: {
                return get_value()
            }, set: { value in
                let corrected_value:String = value.filter({ $0.isNumber || $0 == "." || $0 == "-" })
                set_value(corrected_value)
            }))
            Menu {
                ForEach(types) { type in
                    let id:String = type.id
                    Button(id) {
                        set_value_type(id)
                    }
                }
            } label: {
                Text(get_value_type())
            }
            Spacer()
        }
    }
    
    private func get_unit_view<T: science.Unit>(title: String, unit: UnsafeMutablePointer<T>, types: [T.TargetUnitType]) -> some View {
        HStack {
            Spacer()
            Text(title)
            Spacer()
            TextField(title, text: Binding<String>.init(get: {
                return unit.pointee.value.description
            }, set: { value in
                let corrected_value:String = value.filter({ $0.isNumber || $0 == "." || $0 == "-" })
                unit.pointee.value = HugeFloat(corrected_value)
            }))
            Menu {
                ForEach(types) { type in
                    let id:String = type.id
                    Button(id) {
                        unit.pointee.type = T.TargetUnitType.init(rawValue: id)!
                    }
                }
            } label: {
                Text(unit.pointee.type.id)
            }
            Spacer()
        }
    }
}
