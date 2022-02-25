//
//  ______App.swift
//  卡片记忆游戏
//
//  Created by 杨海 on 2022/2/25.


import SwiftUI

@main
struct ______App: App {
   //game 指针
    let game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
