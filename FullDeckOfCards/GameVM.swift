//
//  CardVM.swift
//  FullDeckOfCards
//
//  Created by LongMa on 2020/11/20.
//

import Foundation

struct GameVM {
    private var model:GameM = generateGame()
    
    var cards: Array<GameM.Card> {
        return model.cards
    }
     
    static func generateGame()->GameM{
        var lArr: Array<GameM.Card> = Array<GameM.Card>()
        
        for type in CardType.allCases {
            for rank in Rank.allCases{
                lArr.append(GameM.Card(rank: rank, type:type))
            }
        }
        return GameM(cards: lArr)
    }
}
