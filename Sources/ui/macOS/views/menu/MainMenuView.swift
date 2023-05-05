//
//  MainMenuView.swift
//  
//
//  Created by Evan Anderson on 5/5/23.
//

import Foundation
import SwiftUI
import science
import huge_numbers

struct MainMenuView : View {
    @State private var current_subview:AnyView? = nil
    @State private var subviews:[() -> AnyView] = []
    
    public var body: some View {
        StackNavigationView(current_subview: $subviews) {
            Text("Root view!")
            Button("View Environment") {
                push_subview(
                    EnvironmentView(environment: ScienceDataStore.shared_instance.active_environment)
                )
            }
            Button("Go to subview") {
                push_subview(
                    Button("View Environment Settings") {
                        push_subview(
                            EnvironmentSettingsView().frame(maxWidth: CGFloat.infinity, maxHeight: CGFloat.infinity)
                        )
                    }.frame(maxWidth: CGFloat.infinity, maxHeight: CGFloat.infinity).background(Color.black)
                )
            }
        }
        .frame(minWidth: 1920, idealWidth: 1920, maxWidth: 1920, minHeight: 1080, idealHeight: 1080, maxHeight: 1080)
    }
    
    private func push_subview<Content: View>(_ view: Content) {
        //withAnimation(.easeOut(duration: 1)) {
            subviews.append({ AnyView(view) })
        //}
    }
}
