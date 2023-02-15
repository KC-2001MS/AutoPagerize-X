//
//  AutoPagerize_XApp.swift
//  AutoPagerize X
//
//  Created by 茅根啓介 on 2023/02/12.

//This program is licensed under the "GNU General Public License v3.0".
//© 2023 Keisuke Chinone
//Program files that are not marked with a copyright notice are not originally marked.

import SwiftUI

@main
struct AutoPagerize_XApp: App {
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
