//
//  EnvironmentSettingsView.swift
//  
//
//  Created by Evan Anderson on 5/4/23.
//

import Foundation
import SwiftUI
import Science
import HugeNumbers
import SwiftUnits

public struct EnvironmentSettingsView : View {
    public let is_editable:Bool
    
    public init(is_editable: Bool = true) {
        self.is_editable = is_editable
    }
    
    public var body : some View {
        VStack {
            let environment:ScientificEnvironment = ScienceDataStore.shared_instance.active_environment
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
                })).disabled(!is_editable)
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
        
        //let pointer:UnsafeMutablePointer<AccelerationUnit> = UnsafeMutablePointer<AccelerationUnit>(&environment.gravity)
        //get_unit_view(title: "Gravity", unit: pointer, types: AccelerationUnitType.allCases)
    }
    
    private func get_unit_view<T: UnitType>(title: String, types: [T], get_value: @escaping () -> String, set_value: @escaping (String) -> Void, get_value_type: @escaping () -> String, set_value_type: @escaping (String) -> Void) -> some View {
        HStack {
            Spacer()
            Text(title)
            TextField(title, text: Binding<String>.init(get: {
                return get_value()
            }, set: { value in
                let corrected_value:String = value.filter({ $0.isNumber || $0 == "." || $0 == "-" })
                set_value(corrected_value)
            })).disabled(!is_editable)
            Menu {
                ForEach(types) { type in
                    let id:String = type.id
                    Button(id) {
                        set_value_type(id)
                    }.disabled(!is_editable)
                }
            } label: {
                Text(get_value_type())
            }
            Spacer()
        }
    }
    
    private func get_unit_view<T: SwiftUnits.Unit>(title: String, unit: UnsafeMutablePointer<T>, types: [T.TargetUnitType]) -> some View {
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
    
    private func get_unit_view<T: SwiftUnits.Unit>(title: String, editing_unit: @escaping ((inout T) -> Void) -> Void, types: [T.TargetUnitType]) -> some View {
        HStack {
            Spacer()
            Text(title)
            Spacer()
            TextField(title, text: Binding<String>.init(get: {
                var string:String = ""
                editing_unit { brother in
                    string = brother.value.description
                }
                return string
            }, set: { value in
                let corrected_value:String = value.filter({ $0.isNumber || $0 == "." || $0 == "-" })
                editing_unit { brother in
                    brother.value = HugeFloat(corrected_value)
                }
            }))
            Menu {
                ForEach(types) { type in
                    let id:String = type.id
                    Button(id) {
                        editing_unit { brother in
                            brother.type = T.TargetUnitType.init(rawValue: id)!
                        }
                    }
                }
            } label: {
                var type:String = ""
                let _:Void = editing_unit { brother in
                    type = brother.type.id
                }
                Text(type)
            }
            Spacer()
        }
    }
}
