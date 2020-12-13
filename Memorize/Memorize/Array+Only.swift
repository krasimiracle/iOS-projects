//
//  Array+Only.swift
//  Memorize
//
//  Created by Krasimir Stoyanov on 13.12.20.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
