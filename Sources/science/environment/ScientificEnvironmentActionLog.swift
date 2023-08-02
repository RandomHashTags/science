//
//  ScientificEnvironmentActionLog.swift
//  
//
//  Created by Evan Anderson on 5/17/23.
//

import Foundation

public enum ScientificEnvironmentActionType {
    case atomic_decay
}

public struct ScientificEnvironmentAction {
    let type:ScientificEnvironmentActionType
    let timestamp:ElapsedTime
    let data:Any?
}

public struct ScientificEnvironmentActionLog {
    private var actions:[ScientificEnvironmentAction]
    
    public init() {
        actions = []
    }
    mutating func submit(_ action: ScientificEnvironmentAction) {
        actions.append(action)
    }
    
    func event_log() -> [String] {
        var array:[String] = [String]()
        array.reserveCapacity(actions.count)
        for action in actions {
            let type:ScientificEnvironmentActionType = action.type
            let data_to_string:String
            switch type {
            case .atomic_decay:
                let data:AtomicDecayResult = action.data as! AtomicDecayResult
                let iteration_count:UInt64 = data.iteration_count
                data_to_string = "[\(data.atom_uuid)] " + data.decayed_from + " -> " + data.decayed_into + " (took \(iteration_count) half-life" + (iteration_count > 1 ? "s" : "") + ")"
                break
            }
            array.append("[\(action.timestamp)] [\(type)] " + data_to_string)
        }
        return array
    }
}
