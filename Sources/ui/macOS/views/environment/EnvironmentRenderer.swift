//
//  EnvironmentRenderer.swift
//  
//
//  Created by Evan Anderson on 5/29/23.
//

import Foundation
import SwiftUI
import Science
#if canImport(RendererSceneKit)
import RendererSceneKit
#endif

struct EnvironmentRenderer : View {
    var body : some View {
        #if canImport(RendererSceneKit)
        EnvironmentRendererView()
        #else
        VStack {
            Text("no renderer is supported on your device, brother ;)")
        }
        #endif
    }
}
