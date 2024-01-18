//
//  ElectronShell.swift
//  
//
//  Created by Evan Anderson on 4/20/23.
//

import Foundation

public struct ElectronShell : Hashable {
    public static func collect(electron_count: Int) -> [ElectronShell] {
        var shell_number:Int = 1, maximum_electrons:Int = 0
        var array:[ElectronShell] = []
        array.reserveCapacity(electron_count)
        let electron:Electron = Electron()
        while maximum_electrons < electron_count {
            let maximum_allowed:Int = 2 * (shell_number * shell_number)
            let electrons:[Electron] = electron_count >= maximum_allowed ? [Electron].init(repeating: electron, count: maximum_allowed) : [Electron].init(repeating: electron, count: electron_count - maximum_electrons)
            let shell:ElectronShell = ElectronShell(maximum_allowed_electrons: maximum_allowed, electrons: electrons)
            array.append(shell)
            shell_number += 1
            maximum_electrons += maximum_allowed
        }
        return array
    }
    
    public let maximum_allowed_electrons:Int
    public private(set) var electrons:[Electron]
    
    public init(maximum_allowed_electrons: Int, electrons: [Electron]) {
        self.maximum_allowed_electrons = maximum_allowed_electrons
        self.electrons = electrons
    }
    
    public var can_accept_an_electron : Bool {
        return electrons.count + 1 < maximum_allowed_electrons
    }
    
    public var is_full : Bool {
        return electrons.count == maximum_allowed_electrons
    }
    public var elementary_charge : Double {
        return electrons.reduce(0) { $0 + $1.elementary_charge }
    }
    
    public mutating func gained(_ amount: Int) {
        electrons.append(contentsOf: [Electron].init(repeating: Electron(), count: amount))
    }
    
    public mutating func lost() {
        electrons.removeAll()
    }
    public mutating func lost(_ amount: Int) {
        electrons.removeLast(amount)
    }
}
