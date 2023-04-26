//
//  MetalRendererDelegate.swift
//  
//
//  Created by Evan Anderson on 4/26/23.
//

import Foundation
import AppKit
import MetalKit

public class MetalRendererDelegate : NSObject, NSApplicationDelegate {
    let window:NSWindow = NSWindow()
    let window_delegate:NSWindowDelegate = WindowDelegate()
    
    public func applicationDidFinishLaunching(_ notification: Notification) {
        let defaultDevice = MTLCreateSystemDefaultDevice()!
        
        let controller:NSViewController = NSViewController()
        let view:MTKView = MTKView(frame: CGRect(x: 0, y: 0, width: 500, height: 500), device: defaultDevice)
        controller.view = view
        
        let renderer:Renderer = Renderer(metalKitView: view)!
        renderer.mtkView(view, drawableSizeWillChange: view.drawableSize)
        view.delegate = renderer
        
        NSApp.setActivationPolicy(.regular)
        NSApp.activate(ignoringOtherApps: true)
    }
}

private class WindowDelegate : NSObject, NSWindowDelegate {
    func windowWillClose(_ notification: Notification) {
        NSApplication.shared.terminate(0)
    }
}
