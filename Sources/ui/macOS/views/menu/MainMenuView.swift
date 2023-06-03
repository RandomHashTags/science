//
//  MainMenuView.swift
//  
//
//  Created by Evan Anderson on 5/5/23.
//

import Foundation
import SwiftUI
import Science
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
            Button("View Periodic Table") {
                push_subview(
                    PeriodicTableView(on_tap: { element in
                        if let isotopes:[any ChemicalElementIsotope] = element.isotope_type?.allCases as? [any ChemicalElementIsotope] {
                            push_subview(
                                ChemicalElementIsotopesView(isotopes: isotopes, on_tap: { isotope in
                                })
                            )
                        }
                    }).frame(maxWidth: CGFloat.infinity, maxHeight: CGFloat.infinity)
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
    
    internal func push_subview<Content: View>(_ view: Content) {
        //withAnimation(.easeOut(duration: 0.3)) {
            subviews.append({ AnyView(view) })
        //}
    }
}
