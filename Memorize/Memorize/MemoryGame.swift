//
//  MemoryGame.swift
//  Memorize
//
//  Created by 최원석 on 2021/01/01.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: [Card]

    func choose(card: Card) {
        print("cardd chosen: \(card)")
    }

    init(numberOfPairOfCards: Int, cardContentFactory:(Int) -> CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))
        }
    }

    struct Card: Identifiable {
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: CardContent
        var id: Int
    }
}
