//
//  StackNavigationView.swift
//  
//
//  Created by Evan Anderson on 5/4/23.
//

import Foundation
import SwiftUI

// https://betterprogramming.pub/stack-navigation-on-macos-41a40d8ec3a4

public struct StackNavigationView<RootContent> : View where RootContent : View {
    @Binding var current_subview:AnyView
    @Binding var showing_subview:Bool
    
    let root_view:() -> RootContent
    
    public init(current_subview: Binding<AnyView>, showing_subview: Binding<Bool>, @ViewBuilder root_view: @escaping () -> RootContent) {
        self._current_subview = current_subview
        self._showing_subview = showing_subview
        self.root_view = root_view
    }
    
    public var body : some View {
        VStack {
            if !showing_subview {
                root_view()
            } else {
                StackNavigationSubview(is_visible: $showing_subview) {
                    current_subview
                }
                .transition(.move(edge: .trailing))
            }
        }.toolbar {
            ToolbarItem {
                Button(action: {}) {
                    Label("Add", systemImage: "plus")
                }
            }
        }
    }
}

struct StackNavigationSubview<Content> : View where Content : View {
    @Binding var is_visible:Bool
    let content_view:() -> Content
    
    var body : some View {
        VStack {
            content_view()
        }
        .toolbar {
            ToolbarItem(placement: .navigation) {
                Button {
                    withAnimation(.easeOut(duration: 0.3)) {
                        is_visible = false
                    }
                } label: {
                    Label("back", systemImage: "chevron.left")
                }

            }
        }
    }
}
