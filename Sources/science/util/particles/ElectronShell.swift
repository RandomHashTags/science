//
//  ElectronShell.swift
//  
//
//  Created by Evan Anderson on 4/20/23.
//

import Foundation

struct ElectronShell : Hashable {
    static func collect(electron_count: Int) -> [ElectronShell] {
        var shell_number:Int = 1, maximum_electrons:Int = 0
        var array:[ElectronShell] = [ElectronShell]()
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
    
    let maximum_allowed_electrons:Int
    var electrons:[Electron]
    
    init(maximum_allowed_electrons: Int, electrons: [Electron]) {
        self.maximum_allowed_electrons = maximum_allowed_electrons
        self.electrons = electrons
    }
    
    func can_accept_an_electron() -> Bool {
        return electrons.count + 1 < maximum_allowed_electrons
    }
    
    var is_full : Bool {
        return electrons.count == maximum_allowed_electrons
    }
    var elementary_charge : Double {
        return electrons.reduce(0) { $0 + $1.elementary_charge }
    }
}
