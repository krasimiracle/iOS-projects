//
//  Theme.swift
//  Memorize
//
//  Created by Krasimir Stoyanov on 16.12.20.
//

import Foundation
import SwiftUI

struct Theme: Codable {
    var name: String
    var amountOfCards: Int
    var json: Data? {
        return try? JSONEncoder().encode(self)
    }
    
    static var themes = [helloween,bla]
    
    static let helloween = Theme(name: "Helloween", amountOfCards: 4)
    static let bla = Theme(name: "bla", amountOfCards: 4)
}
