//
//  ScienceCommands.swift
//  
//
//  Created by Evan Anderson on 5/5/23.
//

import Foundation
import SwiftUI

struct ScienceCommands : Commands {
    var body: some Commands {
        CommandMenu("Test") {
            Button("Action1") {
            }
            Button("Action2") {
            }
        }
        CommandMenu("View") {
            Button("Environment Settings") {
                
            }
        }
    }
}
