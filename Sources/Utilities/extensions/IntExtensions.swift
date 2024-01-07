//
//  IntExtensions.swift
//
//  Created by Evan Anderson on 4/6/23.
//

import Foundation

package extension BinaryInteger {
    
    var as_subscript : String {
        let values:[Character] = String(describing: self).map({ Self.get_subscript($0) })
        return String(values)
    }
    private static func get_subscript(_ value: Character) -> Character {
        switch value {
        case "0": return "₀"
        case "1": return "₁"
        case "2": return "₂"
        case "3": return "₃"
        case "4": return "₄"
        case "5": return "₅"
        case "6": return "₆"
        case "7": return "₇"
        case "8": return "₈"
        case "9": return "₉"
        default: return "?"
        }
    }
    
    var as_superscript : String {
        let values:[Character] = String(describing: self).map({ Self.get_superscript($0) })
        return String(values)
    }
    private static func get_superscript(_ value: Character) -> Character {
        switch value {
        case "0": return "⁰"
        case "1": return "¹"
        case "2": return "²"
        case "3": return "³"
        case "4": return "⁴"
        case "5": return "⁵"
        case "6": return "⁶"
        case "7": return "⁷"
        case "8": return "⁸"
        case "9": return "⁹"
        default: return "?"
        }
    }
    
}
