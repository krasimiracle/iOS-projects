//
//  Array+Identifiable.swift
//  Memorize
//
//  Created by Krasimir Stoyanov on 13.12.20.
//

import Foundation

extension Array where Element: Identifiable {
    func firstIndex(matching: Element) -> Int {
        for index in 0..<count {
            if self[index].id == matching.id {
                return index
            }
        }
        return 0 // TODO: implement logic when the id hasn't been found from the list
    }
}
