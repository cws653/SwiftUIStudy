//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by 최원석 on 2021/01/01.
//

import SwiftUI

class EmojiMemoryGame {
    private var model: MemoryGame<String> = createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emoji: [String] = ["👻", "🎃", "🕷"]
        return MemoryGame<String>(numberOfPairOfCards: emoji.count) { pairIndex in return emoji[pairIndex] }
    }
    
    
    // MARK: - Access to the Model
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
