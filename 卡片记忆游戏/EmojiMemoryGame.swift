//
//  EmojiMemoryGame.swift
//  lesson1
//
// 
//

import SwiftUI



//viewmodel改变时告诉ui  Published
class EmojiMemoryGame:ObservableObject  {
    
    
  //static 静态全局
  static  let emojis =  ["🦁","🐈","☃️","🔴","💭","♥️","🔞","🦞","🦐" ]
  //测试
    
   static func createMemoryGame()->MemoryGame<String>{
   
      MemoryGame<String>(
            
            numberOfpairsOfCards: 3) { pairIndex in
            emojis[pairIndex]
          
            
        }
        
    }
	
	
  @Published  private  var model:MemoryGame<String> = createMemoryGame()
    var cards: Array<MemoryGame<String>.Card>{
        
        model.cards
     }
    //MARK: -Intent(s)  表达用户意图
    func choose(_ card:MemoryGame<String>.Card){
        
        model.choose(card)}

    
}

