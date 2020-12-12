//
//  GridLayout.swift
//  Memorize
//
//  Created by Krasimir Stoyanov on 12.12.20.
//

import SwiftUI

struct GridLayout {
    var size: CGSize
    var rowCount: Int = 0
    var columnCount: Int = 0
    
    init(itemCount: Int, nearAspectRatio desiredAspectRatio: Double = 1, in size: CGSize) {}
    
    var itemSize: CGSize {}
    
    func location(ofItemAt index: Int) -> CGPoint {}
}
