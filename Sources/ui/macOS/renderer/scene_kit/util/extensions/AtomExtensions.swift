//
//  AtomExtensions.swift
//  
//
//  Created by Evan Anderson on 5/29/23.
//

import Foundation
import SceneKit
import Science
import SwiftUnits

extension Atom {
    
    func get_node(affected_by_gravity: Bool = true) -> SCNNode? {
        guard let element:ChemicalElement = chemical_element, let details:ChemicalElementDetails = chemical_element_details else {
            print("AtomExtensions;get_node;(chemical_element == nil || chemical_element_details == nil) for element with identifier \"" + chemical_element_identifier! + "\"")
            return nil
        }
        let atomic_radius:UInt16 = element.details.atomic_radius
        guard atomic_radius > 0 else {
            print("AtomExtensions;get_node;atomic_radius <= 0 for element with identifier \"" + chemical_element_identifier! + "\"")
            return nil
        }
        
        let sphere:SCNSphere = SCNSphere(radius: CGFloat(atomic_radius))
        sphere.firstMaterial?.diffuse.contents = [NSColor.white, NSColor.blue, NSColor.orange, NSColor.red, NSColor.lightGray, NSColor.green, NSColor.brown, NSColor.purple, NSColor.magenta].randomElement()!
        
        let physics_body:SCNPhysicsBody = SCNPhysicsBody(type: SCNPhysicsBodyType.dynamic, shape: SCNPhysicsShape(geometry: sphere))
        physics_body.isAffectedByGravity = affected_by_gravity
        physics_body.charge = elementary_charge
        physics_body.mass = CGFloat(details.standard_atomic_weight.to_unit(prefix: UnitPrefix.kilo, unit: MassUnitType.gram).value.represented_float)
        
        physics_body.friction = 0
        physics_body.angularDamping = 0
        physics_body.damping = 0
        
        let node:SCNNode = SCNNode(geometry: sphere)
        node.name = uuid.uuidString
        node.physicsBody = physics_body
        
        return node
    }
    
}
