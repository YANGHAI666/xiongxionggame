//
//  ContentView.swift
//  lesson1
//
//  Created by    on 2022/1/9.
//

import SwiftUI

struct ContentView: View {
//测试有没有改变 xcode 更改

//第二次测试
 
    
    
    let viewModel:EmojiMemoryGame
    var body: some View {
        //HStack水平 VStack竖直 ZStack竖直
        
       
            ScrollView{
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 150, maximum: 200))])  {
                    ForEach(viewModel.cards) { card in
                        Carview(card:card)
                            .aspectRatio(2/3, contentMode:.fit)
                            .onTapGesture{
                                viewModel.choose(card)
                            }
                }
            }
            }
        
            .foregroundColor(.green)
            
          
       
        .padding()
        
    }
    
 
 
    }
struct Carview: View{
    let card: MemoryGame<String>.Card
    var body: some View{
        ZStack{
            let shape = RoundedRectangle(cornerRadius: 22)
            if card.isFaceUp{
            shape.fill().foregroundColor(.white)
            shape.strokeBorder(lineWidth: 3)
                Text(card.content).font(.caption)
            }
            else
            {
                RoundedRectangle(cornerRadius: 22)
                  
                    .fill()

            }
            
        }
     
        
        
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let game = EmojiMemoryGame()
        ContentView(viewModel: game)
            .preferredColorScheme(.dark)
        ContentView(viewModel: game)
            .preferredColorScheme(.light)
            
    }
}
