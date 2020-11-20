//
//  CardM.swift
//  FullDeckOfCards
//
//  Created by LongMa on 2020/11/20.
//

import Foundation

enum Rank:Int, CaseIterable {
    case ace = 1
    case two,three,four,five,six,seven,eight,nine,ten
    case J,Q,K
    
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
    
    var cards: Array<Card>

    struct Card{
        var rank:Rank
        var type:CardType
    }
}
