//
//  ContentView.swift
//  FullDeckOfCards
//
//  Created by LongMa on 2020/11/20.
//

import SwiftUI


/// 声明式UI编程，"很快啊!"
struct ContentView: View {
    var viewModel: GameVM
    
    var body: some View {
        let columnNum = 4
        let rowNum = viewModel.cards.count/columnNum
        
        return
            HStack{
                ForEach(0..<columnNum){column in
                    VStack{
                        ForEach(0..<rowNum){row in
                            let index = (rowNum) * column + row
                            let card = viewModel.cards[index]
                            Card(cardM:card)
                        }
                    }
                }
            }.padding()
    }
}


struct Card: View {
    var cardM:GameM.Card
    var body: some View{
        ZStack{
            RoundedRectangle(cornerRadius: 10.0)
                .stroke(lineWidth: 3)
            
            //为适配夜晚模式效果
            RoundedRectangle(cornerRadius: 10.0)
                .fill(Color.white)
            VStack{
                Text(cardM.rank.customDescription())
                Text(cardM.type.customDescription())
            }
        }.foregroundColor(.orange)
        
    }
}













struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(viewModel: GameVM())
        }
    }
}
