//
//  PagesNumbersKeynoteBugWhenPastingEmptyPasteboardApp.swift
//  PagesNumbersKeynoteBugWhenPastingEmptyPasteboard
//
//  Created by Guillaume Leclerc on 11/02/2026.
//

import SwiftUI

@main
struct PagesNumbersKeynoteBugWhenPastingEmptyPasteboardApp: App {
    init() {
        if AXIsProcessTrusted() == false {
            let options: NSDictionary = [kAXTrustedCheckOptionPrompt.takeRetainedValue() as NSString: true]
            
            AXIsProcessTrustedWithOptions(options)
        }
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
