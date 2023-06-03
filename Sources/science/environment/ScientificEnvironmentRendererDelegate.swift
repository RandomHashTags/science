//
//  ScientificEnvironmentRendererDelegate.swift
//  
//
//  Created by Evan Anderson on 6/3/23.
//

import Foundation

public protocol ScientificEnvironmentRendererDelegate {
    
    func tick(_ environment: ScientificEnvironment)
    
    func atom_decayed(_ result: AtomicDecayResult)
    
}
