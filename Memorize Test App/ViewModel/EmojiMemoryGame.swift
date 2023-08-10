//
//  EmojiMemoryGame.swift
//  Memorize Test App
//
//  Created by Aleksandr Ataev on 10.08.2023.
//

import SwiftUI

class EmojiMemoryGame {
    static let emojis = ["✈️", "🚗", "🚀", "🚎", "🚛", "🚕", "🚚", "🚐", "🚝", "🚟", "🚓", "🛵", "🚲", "🛴", "🚋", "🚌", "🚁", "🚑", "🚜", "🛺", "🚒", "🛻", "🚂", "🏍️"]

    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairOfCards: 4) { pairIndex in
            emojis[pairIndex]
        }
    }

    private var model: MemoryGame<String> = createMemoryGame()

    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }

}
