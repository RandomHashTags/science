//
//  UserInterfaceMacOS.swift
//  
//
//  Created by Evan Anderson on 5/4/23.
//

/*
import Foundation
import SwiftUI
import AppKit
import MetalKit

// https://theswiftdev.com/how-to-build-macos-apps-using-only-the-swift-package-manager/

public struct MenuView : Identifiable, Hashable {
    public let id:UUID = UUID()
    public let title:String
}

public struct MainMenuView : View {
    let menu_views:[MenuView] = [
        MenuView(title: "Settings View"),
        MenuView(title: "Settings View2"),
        MenuView(title: "Settings View3"),
        MenuView(title: "Settings View4"),
        MenuView(title: "Settings View5"),
        MenuView(title: "Settings View6")
    ]
    
    @State private var current_subview:AnyView = AnyView(Text("brother"))
    @State private var showing_subview:Bool = false
    
    public init() {
    }
    
    public var body: some View {
        StackNavigationView(current_subview: $current_subview, showing_subview: $showing_subview) {
            Text("Root view!")
            Button("Go to subview") {
                show_subview(AnyView(
                    Text("\n\n\n\n\nbro").frame(maxWidth: CGFloat.infinity, maxHeight: CGFloat.infinity).background(Color.black)
                ))
            }
        }.frame(minWidth: 1920, idealWidth: 1920, maxWidth: 1920, minHeight: 1080, idealHeight: 1080, maxHeight: 1080)
    }
    
    private func show_subview(_ view: AnyView) {
        withAnimation(.easeOut(duration: 0.3)) {
            current_subview = view
            showing_subview = true
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
        
        let title:String = "Scientific simulator, made by Evan Anderson"
        let main_menu:NSMenu = NSMenu(title: title)
        main_menu.addItem(app_menu)
        NSApplication.shared.mainMenu = main_menu
        
        let size:CGSize = CGSize(width: 1920, height: 1080)
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
        MenuDetail(view: MenuView(title: "MenuView Item"))
    }
}
*/

import AppKit
import SwiftUI
import MacOSUserInterface

print("UserInterfaceMacOS;main;test1")

public struct MenuView : Identifiable, Hashable {
    public let id:UUID = UUID()
    public let title:String
}

public struct MainMenuView : View {
    let menu_views:[MenuView] = [
        MenuView(title: "Settings View"),
        MenuView(title: "Settings View2"),
        MenuView(title: "Settings View3"),
        MenuView(title: "Settings View4"),
        MenuView(title: "Settings View5"),
        MenuView(title: "Settings View6")
    ]
    
    @State private var current_subview:AnyView = AnyView(Text("brother"))
    @State private var showing_subview:Bool = false
    
    public init() {
    }
    
    public var body: some View {
        StackNavigationView(current_subview: $current_subview, showing_subview: $showing_subview) {
            Text("Root view!")
            Button("Go to subview") {
                show_subview(AnyView(
                    Text("\n\n\n\n\nbro").frame(maxWidth: CGFloat.infinity, maxHeight: CGFloat.infinity).background(Color.black)
                ))
            }
        }.frame(minWidth: 1920, idealWidth: 1920, maxWidth: 1920, minHeight: 1080, idealHeight: 1080, maxHeight: 1080)
    }
    
    private func show_subview(_ view: AnyView) {
        withAnimation(.easeOut(duration: 0.3)) {
            current_subview = view
            showing_subview = true
        }
    }
}

struct Brother : App {
    var body: some Scene {
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

struct ScienceCommands : Commands {
    var body: some Commands {
        CommandMenu("Test") {
            Button("Action1") {
            }
            Button("Action2") {
            }
        }
    }
}

let _:NSApplication = NSApplication.shared
NSApp.setActivationPolicy(.regular)
NSApp.activate(ignoringOtherApps: false)

Brother.main()

