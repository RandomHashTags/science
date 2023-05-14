//
//  ScienceApplication.swift
//  
//
//  Created by Evan Anderson on 5/5/23.
//

import AppKit
import SwiftUI
import science

public struct ScienceApplication : App {
    
    public static func run() {
        let _:NSApplication = NSApplication.shared
        NSApp.setActivationPolicy(.regular)
        NSApp.activate(ignoringOtherApps: true)
        ScienceApplication.main()
    }
    
    public init() {
    }
    
    public var body: some Scene {
        Window("Science düd", id: "main-screen") {
            MainMenuView()
        }
        .defaultSize(width: 1920, height: 1080)
        .defaultPosition(UnitPoint.center)
        .windowToolbarStyle(.unified)
        .commandsRemoved()
        .commands {
            ScienceCommands()
        }
    }
}
