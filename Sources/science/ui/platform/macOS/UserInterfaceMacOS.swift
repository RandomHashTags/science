//
//  UserInterfaceMacOS.swift
//  
//
//  Created by Evan Anderson on 5/4/23.
//

import Foundation
import AppKit
import SwiftUI
import science
import huge_numbers

private struct MainMenuView : View {
    var body: some View {
        EnvironmentSettingsView()
    }
}

private class UserInterfaceMacOS : NSObject, NSWindowDelegate {
    func windowWillClose(_ notification: Notification) {
        NSApplication.shared.terminate(0)
    }
}

private class UserInterfaceMacOSAppDelegate : NSObject, NSApplicationDelegate {
    let window:NSWindow = NSWindow()
    let window_delegate:UserInterfaceMacOS = UserInterfaceMacOS()
    
    func applicationDidFinishLaunching(_ notification: Notification) {
        let app_menu:NSMenuItem = NSMenuItem()
        app_menu.submenu = NSMenu()
        app_menu.submenu?.addItem(NSMenuItem(title: "Quit", action: #selector(NSApplication.terminate(_:)), keyEquivalent: "q"))
        
        let title:String = "Science, made by Evan Anderson"
        let main_menu:NSMenu = NSMenu(title: title)
        main_menu.addItem(app_menu)
        NSApplication.shared.mainMenu = main_menu
        
        let size:CGSize = CGSize(width: 1280, height: 720)
        window.setContentSize(size)
        window.styleMask = [.closable, .miniaturizable, .resizable, .titled]
        window.delegate = window_delegate
        window.title = title
        
        let view:NSHostingView = NSHostingView(rootView: MainMenuView())
        view.frame = CGRect(origin: CGPoint.zero, size: size)
        view.autoresizingMask = [.height, .width]
        window.contentView!.addSubview(view)
        window.center()
        window.makeKeyAndOrderFront(window)
        
        NSApp.setActivationPolicy(.regular)
        NSApp.activate(ignoringOtherApps: true)
    }
}

public func run() {
    let app:NSApplication = NSApplication.shared
    let delegate:UserInterfaceMacOSAppDelegate = UserInterfaceMacOSAppDelegate()
    app.delegate = delegate
    app.run()
}
