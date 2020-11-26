//
//  CardVM.swift
//  FullDeckOfCards
//
//  Created by LongMa on 2020/11/20.
//

import Foundation

struct GameVM {
    
    
    /// 声明为 private，符合封装的思想，通过方法初始化时，必须是类方法（static func）！如果用实例方法，创建实例时，属性还未初始化，不符合语法！
    private var model:GameM = generateGame()
    
    //数组的泛型不能直接声明为 Card 类型，会提示找不到。需要通过结构体名点出来！
    var cards: Array<GameM.Card> {
        return model.cards
    }
     
    static func generateGame()->GameM{
        var lArr: Array<GameM.Card> = Array<GameM.Card>()
        
        //两个循环就创建好了数据源，"很快啊!"
        for type in CardType.allCases {
            for rank in Rank.allCases{
                lArr.append(GameM.Card(rank: rank, type:type))
            }
        }
        return GameM(cards: lArr)
    }
}
