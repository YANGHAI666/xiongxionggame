//
//  EmojiMemoryGame.swift
//  lesson1
//
// 
//

import SwiftUI




class EmojiMemoryGame  {
    
    
  //static 静态全局
  static  let emojis =  ["🦁","🐈","☃️","🔴","💭","♥️","🔞","🦞","🦐" ]
  
    
   static func createMemoryGame()->MemoryGame<String>{
   
      MemoryGame<String>(
            
            numberOfpairsOfCards: 3) { pairIndex in
            emojis[pairIndex]
            
            
        }
        
    }
    private  var model:MemoryGame<String> = createMemoryGame()
    var cards: Array<MemoryGame<String>.Card>{
        
        model.cards
     }
    //MARK: -Intent(s)
    func choose(_ card:MemoryGame<String>.Card){
        
        model.choose(card)}

    
}

