//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Krasimir Stoyanov on 28.11.20.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()

    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
