//
//  CardM.swift
//  FullDeckOfCards
//
//  Created by LongMa on 2020/11/20.
//

import Foundation

//CaseIterable:当需要对枚举进行遍历时，需要遵守 CaseIterable 协议，然后对枚举的 allCases 类属性进行遍历即可
enum Rank:Int, CaseIterable {
    case ace = 1
    
    //未指定确定值的类别，默认值是“依次”加1，因此，two 的 rawValue 为2，three 的 rawValue 为 3，以此类推
    case two,three,four,five,six,seven,eight,nine,ten
    case J,Q,K
    
    //swift的枚举，可以自定义方法。写代码时，“很快啊!”
    func customDescription()->String{
        switch self {
        case .ace:
            return "A"
        case .J:
            return "J"
        case .Q:
            return "Q"
        case .K:
            return "K"
        default:
            return "\(self.rawValue)"
        }
    }
}

enum CardType: CaseIterable{
    case heart,spades,club,diamond
    
    func customDescription() -> String {
        switch self {
        case .heart:
            
            //command+ctrl+space,快速调出 emoji 窗口，可以搜索，"很6啊!"
            return "♥️"
        case .spades:
            return "♠️"
        case .club:
            return "♦️"
        default:
            return "♣️"
        }
    }
}

struct GameM {
    
    //结构体的属性在声明时，如果不初始化，那么在创建类实例时，需要在初始化方法中初始化
    var cards: Array<Card>

    //swift 的结构体可以嵌套，"很6啊!"
    struct Card{
        var rank:Rank
        var type:CardType
    }
}
