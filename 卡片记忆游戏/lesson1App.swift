//  lesson1App.swift
//  lesson1
//
//  Created by   on 2022/1/9.
//

import SwiftUI

@main
struct lesson1App: App {
   //game 指针
    let game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
