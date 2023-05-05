//
//  StackNavigationView.swift
//  
//
//  Created by Evan Anderson on 5/4/23.
//

import Foundation
import SwiftUI

// https://betterprogramming.pub/stack-navigation-on-macos-41a40d8ec3a4 | modified by Evan Anderson

public struct StackNavigationView<RootContent> : View where RootContent : View {
    @Binding var subviews:[() -> AnyView]
    
    let root_view:() -> RootContent
    
    public init(current_subview: Binding<[() -> AnyView]>, @ViewBuilder root_view: @escaping () -> RootContent) {
        self._subviews = current_subview
        self.root_view = root_view
    }
    
    public var body : some View {
        VStack {
            if subviews.count == 0 {
                root_view()
            } else {
                StackNavigationSubview(index: $subviews) {
                    subviews.last!()
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
    @Binding var index:[() -> AnyView]
    let content_view:() -> Content
    
    var body : some View {
        VStack {
            content_view()
        }
        .toolbar {
            ToolbarItem(placement: .navigation) {
                Button {
                    //withAnimation(.easeOut(duration: 1)) {
                        index.removeLast()
                        //return
                    //}
                } label: {
                    Label("back", systemImage: "chevron.left")
                }
            }
        }
    }
}
