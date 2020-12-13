//
//  MemoryGame.swift
//  Memorize
//
//  Created by Krasimir Stoyanov on 5.12.20.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    mutating func choose(card: Card) {
        print("card chose: \(card)")
        let chosenIndex = cards.firstIndex(matching: card)
        cards[chosenIndex].isFaceUp = !cards[chosenIndex].isFaceUp
    }
        
    init(cardContentFactory: (Int) -> CardContent) {
        cards = Array<Card>()
        let lower = 2
        let upper = 5
        let randomNumber = Int.random(in: lower...upper)
        for pairIndex in 0..<randomNumber {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(content: content, id: pairIndex * 2))
            cards.append(Card(content: content, id: pairIndex * 2+1))
        }
    }
    
    struct Card: Identifiable {
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: CardContent
        var id: Int
    }
}
