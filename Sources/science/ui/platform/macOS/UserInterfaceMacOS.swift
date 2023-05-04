//
//  UserInterfaceMacOS.swift
//  
//
//  Created by Evan Anderson on 5/4/23.
//

import Foundation
import SwiftUI

// https://theswiftdev.com/how-to-build-macos-apps-using-only-the-swift-package-manager/

private struct MenuView : Identifiable, Hashable {
    let id:UUID = UUID()
    let title:String
}

private struct MainMenuView : View {
    let menu_views:[MenuView] = [
        MenuView(title: "Settings View"),
        MenuView(title: "Settings View2")
    ]
    
    @State private var path:[MenuView] = []
    
    var body: some View {
        NavigationStack(path: $path) {
            List {
                Section("Section1") {
                    NavigationLink("SettingsView", value: menu_views[0])
                    NavigationLink("Brother", value: menu_views[1])
                }
                Section("Section2") {
                    NavigationLink("SettingsView2", value: menu_views[0])
                    NavigationLink("Brother2", value: menu_views[1])
                }
            }
            .navigationTitle("Test brother")
            .navigationDestination(for: MenuView.self) { menu_view in
                MenuDetail(view: menu_view)
            }
        }
    }
}
private struct MenuDetail : View {
    
    let view:MenuView
    
    var body: some View {
        Text(view.title)
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
        
        /*
         let defaultDevice = MTLCreateSystemDefaultDevice()!
         
         let controller:NSViewController = NSViewController()
         let view:MTKView = MTKView(frame: CGRect(x: 0, y: 0, width: 500, height: 500), device: defaultDevice)
         controller.view = view
         
         let renderer:Renderer = Renderer(metalKitView: view)!
         renderer.mtkView(view, drawableSizeWillChange: view.drawableSize)
         view.delegate = renderer
         
         NSApp.setActivationPolicy(.regular)
         NSApp.activate(ignoringOtherApps: true)
         */
        
        let app_menu:NSMenuItem = NSMenuItem()
        app_menu.submenu = NSMenu()
        app_menu.submenu?.addItem(NSMenuItem(title: "Quit", action: #selector(NSApplication.terminate(_:)), keyEquivalent: "q"))
        
        let title:String = "The all-in-one scientific simulator, made by Evan Anderson"
        let main_menu:NSMenu = NSMenu(title: title)
        main_menu.addItem(app_menu)
        NSApplication.shared.mainMenu = main_menu
        
        let size:CGSize = CGSize(width: 1280, height: 720)
        window.setContentSize(size)
        window.styleMask = [.closable, .miniaturizable, .resizable, .titled, .fullSizeContentView]
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

struct MainMenuView_Preview : PreviewProvider {
    static var previews: some View {
        MainMenuView()
    }
}
