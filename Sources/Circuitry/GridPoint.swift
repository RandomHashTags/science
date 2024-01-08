//
//  GridPoint.swift
//
//
//  Created by Evan Anderson on 1/7/24.
//

import Foundation

public struct GridPoint : Hashable {
    public let x:Int
    public let y:Int
    
    package init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
}
