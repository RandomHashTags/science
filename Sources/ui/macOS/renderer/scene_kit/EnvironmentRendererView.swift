//
//  EnvironmentRendererView.swift
//  
//
//  Created by Evan Anderson on 6/3/23.
//

import Foundation
import SwiftUI
import Science
import SceneKit

public struct EnvironmentRendererView : View {
    var scene : EnvironmentRendererScene {
        return EnvironmentRendererScene()
    }
    
    var camera_node : SCNNode {
        let camera:SCNCamera = SCNCamera()
        camera.zFar = 100
        
        let node:SCNNode = SCNNode()
        node.camera = camera
        node.position = SCNVector3(0, 0, 100)
        return node
    }
    
    public init() {
    }
    
    public var body : some View {
        let scene:EnvironmentRendererScene = scene
        SceneView(
            scene: scene,
            pointOfView: camera_node,
            options: [
                .allowsCameraControl,
                .autoenablesDefaultLighting,
                .temporalAntialiasingEnabled,
                .rendersContinuously
            ],
            preferredFramesPerSecond: 60,
            delegate: scene
        )
    }
}
