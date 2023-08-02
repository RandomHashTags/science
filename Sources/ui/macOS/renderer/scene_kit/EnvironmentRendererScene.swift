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
import HugeNumbers
import SwiftUnits

final class EnvironmentRendererScene : SCNScene, SCNSceneRendererDelegate, SCNPhysicsContactDelegate {
    
    override init() {
        super.init()
        
        let data_store:ScienceDataStore = ScienceDataStore.shared_instance
        let environment:ScientificEnvironment = data_store.active_environment
        
        let gravity:Float = -data_store.active_environment.gravity.to_unit(prefix: UnitPrefix.normal, unit: AccelerationUnitType.metres_per_second_per_second).value.represented_float
        background.contents = NSColor.black
        physicsWorld.gravity = SCNVector3(0, gravity, 0)
        physicsWorld.contactDelegate = self
        
        for atom in environment.half_life_atoms {
            if let node:SCNNode = atom.get_node(affected_by_gravity: true) {
                node.position = SCNVector3(0, 0, 0)
                rootNode.addChildNode(node)
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
