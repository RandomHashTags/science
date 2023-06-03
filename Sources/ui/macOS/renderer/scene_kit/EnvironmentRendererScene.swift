//
//  EnvironmentRendererScene.swift
//  
//
//  Created by Evan Anderson on 6/3/23.
//

import Foundation
import SceneKit
import SwiftUI
import Science

final class EnvironmentRendererScene : SCNScene, SCNSceneRendererDelegate, SCNPhysicsContactDelegate {
    
    override init() {
        super.init()
        
        let data_store:ScienceDataStore = ScienceDataStore.shared_instance
        let environment:ScientificEnvironment = data_store.active_environment
        
        background.contents = NSColor.black
        physicsWorld.gravity = SCNVector3(0, 0, 0)
        physicsWorld.contactDelegate = self
        
        var name:String = ""
        for atom in environment.half_life_atoms {
            if let node:SCNNode = atom.get_node(affected_by_gravity: false) {
                name = node.name!
                node.position = SCNVector3(0, 0, 0)
                rootNode.addChildNode(node)
            }
        }
        
        let target_name:String = name
        Task {
            try? await Task.sleep(for: .seconds(3))
            if let node:SCNNode = rootNode.childNode(withName: target_name, recursively: false) {
                node.physicsBody!.applyForce(SCNVector3(x: 0, y: 0.01, z: 0), asImpulse: true)
            }
        }
        environment.resume()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func renderer(_ renderer: SCNSceneRenderer, updateAtTime time: TimeInterval) {
        // tick logic
    }
    
    func physicsWorld(_ world: SCNPhysicsWorld, didBegin contact: SCNPhysicsContact) {
    }
    func physicsWorld(_ world: SCNPhysicsWorld, didEnd contact: SCNPhysicsContact) {
    }
}
