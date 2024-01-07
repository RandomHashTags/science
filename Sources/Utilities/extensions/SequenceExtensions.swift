//
//  SequenceExtensions.swift
//
//  Created by Evan Anderson on 4/8/23.
//

import Foundation

package extension Array {
    func get(_ index: Int) -> Element? {
        return index < count && index >= 0 ? self[index] : nil
    }
}
