//
//  AutoPagerize_XApp.swift
//  AutoPagerize X
//
//  Created by 茅根啓介 on 2023/02/12.
//

import SwiftUI

@main
struct AutoPagerize_XApp: App {
    @Environment(\.openWindow) private var openWindow
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
#if os(macOS)
        Window("AutoPagerize X Info", id: "info") {
            InfoView()
        }
        .keyboardShortcut("I", modifiers: [.command, .shift])
#endif
    }
}
