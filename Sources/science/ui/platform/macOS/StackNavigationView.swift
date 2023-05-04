//
//  StackNavigationView.swift
//  
//
//  Created by Evan Anderson on 5/4/23.
//

import Foundation
import SwiftUI

struct StackNavigationView<RootView> : View where RootView: View {
    let root_view:() -> RootView
    @State private var stack:[() -> AnyView] = []
    @State private var stack_index:Int = 0
    
    init(root_view: @escaping () -> RootView) {
        self.root_view = root_view
        stack = []
        stack_index = 0
    }
    
    var body: some View {
        if stack_index == 0 {
            root_view()
            Button("Forward") {
                let next_view:AnyView = AnyView(VStack {
                    Text("pus")
                })
                stack.append({ next_view })
                stack_index += 1
            }
        } else {
            VStack {
                stack[stack_index-1]()
            }.toolbar {
                ToolbarItem(placement: ToolbarItemPlacement.navigation) {
                    Button("Back") {
                        stack_index -= 1
                    }
                }
            }
        }
    }
    
    /*mutating func present(_ view: @escaping () -> Subview) {
        stack_index += 1
        stack.append(view)
    }*/
    mutating func dismiss() {
        stack_index -= 1
        stack.removeLast()
    }
}
