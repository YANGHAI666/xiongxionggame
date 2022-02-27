//
//  Memorygame.swift
//  lesson1
//
//  Created by   on 2022/2/13.
//

import Foundation


struct MemoryGame<CardContent>{
    
    private(set) var cards: Array<Card>
    
    func choose(_ card: Card)
    {
        let chosenIndex = index(of: card)
               var chosenCard = cards[chosenIndex]
               chosenCard.isFaceUp.toggle()
        print("chosenCard = \(chosenCard)")
    }
    //数组的索引 
    func index (of card: Card )
    
    ->Int{
        
        
        for index in 0..<cards.count{
            
            
            if cards [index].id == card.id  {
                
                return index
                
                
            }      }
        return 0
    }
 //初始化
    init(numberOfpairsOfCards:Int,creatcCardContent:(Int)->CardContent){
        
        cards = Array <Card>()
        //卡片对数*2
        for pairIndex in 0..<numberOfpairsOfCards{
            
            let content = creatcCardContent(pairIndex)
            cards.append(Card(content: content,id: pairIndex*2))
            cards.append(Card(content: content,id: pairIndex*2+1))
        }
    }
    
    
    
    struct Card:Identifiable{
       
        
        var isFaceUp:Bool=false
        var isMatched:Bool=false
        var content: CardContent
        var id: Int
    }
    
    
}
