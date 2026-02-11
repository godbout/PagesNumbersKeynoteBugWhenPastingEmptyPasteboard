//
//  ContentView.swift
//  PagesNumbersKeynoteBugWhenPastingEmptyPasteboard
//
//  Created by Guillaume Leclerc on 11/02/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button("paste \"\" on selected text") {
                sleep(3)
                                
                NSPasteboard.general.clearContents()
                NSPasteboard.general.setString("", forType: .string)
                
                guard
                    let downEvent =  CGEvent(keyboardEventSource: CGEventSource(stateID: .privateState), virtualKey: 9, keyDown: true),
                    let upEvent =  CGEvent(keyboardEventSource: CGEventSource(stateID: .privateState), virtualKey: 9, keyDown: false)
                else {
                    return
                }
                
                downEvent.flags = []
                downEvent.flags.insert(.maskCommand)
                upEvent.flags = []
                upEvent.flags.insert(.maskCommand)
                
                downEvent.post(tap: .cghidEventTap)
                upEvent.post(tap: .cghidEventTap)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
