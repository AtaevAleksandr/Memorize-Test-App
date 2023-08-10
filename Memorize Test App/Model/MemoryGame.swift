//
//  MemoryGame.swift
//  Memorize Test App
//
//  Created by Ataev Aleksandr on 08.08.2023.
//

import Foundation

struct MemoryGame<CardContent> {
    private(set) var cards: Array<Card>
    
    func choose(_ card: Card) {
        
    }

    init(numberOfPairOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = Array<Card>()
        //add numberOfPairOfCards x 2 cards to cards array
        for pairIndex in 0..<numberOfPairOfCards {
            let content: CardContent = createCardContent(pairIndex)
            cards.append(Card(content: content))
            cards.append(Card(content: content))
        }
    }
    
    struct Card {
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: CardContent
    }
}
