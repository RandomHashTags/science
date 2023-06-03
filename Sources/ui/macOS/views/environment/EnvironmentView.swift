//
//  EnvironmentView.swift
//  
//
//  Created by Evan Anderson on 5/4/23.
//

import Foundation
import SwiftUI
import Science

struct EnvironmentView : View {
    
    @ObservedObject var environment:ScientificEnvironment
        
    var body: some View {
        NavigationSplitView {
            Text("test1")
        } content: {
            let max_width:CGFloat = 1000
            VStack {
                //EnvironmentStatsView(environment: environment, fps_counter: environment.fps_counter)
                //Spacer()
                EnvironmentRenderer()
                //Spacer()
                //EnvironmentActionPanel(environment: environment).frame(width: max_width-200, height: 100)
            }.frame(width: max_width, height: 1080).background(Color.orange)
        } detail: {
            EnvironmentSettingsView(is_editable: false).frame(width: 500, height: 1080)
        }.navigationSplitViewStyle(.balanced)
    }
}

struct EnvironmentStatsView : View {
    
    var environment:ScientificEnvironment
    @ObservedObject var fps_counter:EnvironmentFPSCounter
    
    var body: some View {
        HStack {
            Spacer()
            Text("FPS: \(fps_counter.last_count)")
            Spacer()
            Text("Half-life Atoms: \(environment.half_life_atoms.count)")
            Spacer()
            Text("Individual Atoms: \(environment.individual_atoms.count)")
            Spacer()
            Text("Simulation Elapsed Time: " + environment.simulation_elapsed_time.description)
            Spacer()
        }.cornerRadius(50).background(Color.gray)
    }
}

struct EnvironmentActionPanel : View {
    
    @ObservedObject var environment:ScientificEnvironment
        
    var body: some View {
        HStack {
            Button("Reverse 1 frame") {
            }
            get_action_button()
            Button("Forward 1 frame") {
            }
        }.cornerRadius(50).background(Color.gray)
    }
    
    private func get_action_button() -> some View {
        let action_string:String, action_closure:() -> Void
        if !environment.is_simulating {
            action_string = "Resume"
            action_closure = {
                environment.resume()
                environment.objectWillChange.send()
            }
        } else {
            action_string = "Pause"
            action_closure = {
                environment.stop_simulating()
                environment.objectWillChange.send()
            }
        }
        return Button(action_string) {
            action_closure()
        }.onDisappear {
            environment.stop_simulating()
            environment.objectWillChange.send()
        }
    }
}
