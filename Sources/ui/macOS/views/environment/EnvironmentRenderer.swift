//
//  EnvironmentRenderer.swift
//  
//
//  Created by Evan Anderson on 5/29/23.
//

import Foundation
import SwiftUI
import SceneKit
import science

struct EnvironmentRenderer : View {
    var scene : EnvironmentRendererScene {
        return EnvironmentRendererScene()
    }
    
    var camera_node : SCNNode {
        let camera:SCNCamera = SCNCamera()
        camera.zFar = 1000
        
        let node:SCNNode = SCNNode()
        node.camera = camera
        node.position = SCNVector3(0, 0, 1000)
        return node
    }
    
    var body : some View {
        let scene:EnvironmentRendererScene = scene
        SceneView(
            scene: scene,
            pointOfView: camera_node,
            options: [
                .allowsCameraControl,
                .autoenablesDefaultLighting,
                .temporalAntialiasingEnabled,
            ],
            delegate: scene
        )
    }
}

final class EnvironmentRendererScene : SCNScene, SCNSceneRendererDelegate, SCNPhysicsContactDelegate {
    
    override init() {
        super.init()
        
        let data_store:ScienceDataStore = ScienceDataStore.shared_instance
        let environment:ScientificEnvironment = data_store.active_environment
        
        background.contents = NSColor.black
        physicsWorld.gravity = SCNVector3(0, 0, 0)
        physicsWorld.contactDelegate = self
        
        for atom in environment.half_life_atoms {
            if let node:SCNNode = atom.get_node(affected_by_gravity: false) {
                node.position = SCNVector3(0, 0, 0)
                rootNode.addChildNode(node)
            }
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func physicsWorld(_ world: SCNPhysicsWorld, didBegin contact: SCNPhysicsContact) {
    }
    func physicsWorld(_ world: SCNPhysicsWorld, didEnd contact: SCNPhysicsContact) {
    }
}
