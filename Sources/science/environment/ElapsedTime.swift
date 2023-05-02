//
//  ElapsedTime.swift
//  
//
//  Created by Evan Anderson on 5/1/23.
//

import Foundation
import huge_numbers

public struct ElapsedTime {
    private var values:[TimeUnitType:[UnitPrefix:HugeFloat]]
    
    public init(_ values: [TimeUnitType:[UnitPrefix:HugeFloat]] = [:]) {
        self.values = values
    }
    
    public var description : String {        
        let target_types:[TimeUnitType] = [TimeUnitType.day, TimeUnitType.hour, TimeUnitType.minute, TimeUnitType.second]
        var time_values:[TimeUnitType:HugeFloat] = [:]
        for type in target_types {
            if let type_values:[UnitPrefix:HugeFloat] = values[type] {
                time_values[type] = HugeFloat.zero
                for (unit_prefix, value) in type_values {
                    let converted_value:HugeFloat = unit_prefix.convert_to(UnitPrefix.normal, value: value)
                    time_values[type]! += converted_value
                }
            }
        }
        
        var seconds:HugeFloat = time_values[.second] ?? HugeFloat.zero
        var minutes:HugeFloat = time_values[.minute] ?? HugeFloat.zero
        var hours:HugeFloat = time_values[.hour] ?? HugeFloat.zero
        var days:HugeFloat = time_values[.day] ?? HugeFloat.zero
                
        let sixty:HugeFloat = HugeFloat("60"), twenty_four:HugeFloat = HugeFloat("24")
        if seconds >= sixty {
            let amount:HugeFloat = (seconds / sixty).integer.to_float
            seconds -= amount * sixty
            minutes += amount
        }
        if minutes >= sixty {
            let amount:HugeFloat = (minutes / sixty).integer.to_float
            minutes -= amount * sixty
            hours += amount
        }
        if hours >= twenty_four {
            let amount:HugeFloat = (minutes / sixty).integer.to_float
            hours -= amount * twenty_four
            days += amount
        }
        
        var string:String = "", needs_comma:Bool = false
        if !days.integer.is_zero {
            string.append(days.description + "d")
            needs_comma = true
        }
        if !hours.integer.is_zero {
            string.append((needs_comma ? ", " : "") + hours.description + "hr")
            needs_comma = true
        }
        if !minutes.integer.is_zero {
            string.append((needs_comma ? ", " : "") + minutes.description + "min")
            needs_comma = true
        }
        if !seconds.integer.is_zero {
            string.append((needs_comma ? ", " : "") + seconds.description + "s")
        }
        return string
    }
    
    public mutating func add(_ unit: TimeUnit) {
        let unit_type:TimeUnitType = unit.type
        if values[unit_type] == nil {
            values[unit_type] = [:]
        }
        
        let unit_prefix:UnitPrefix = unit.prefix
        if values[unit_type]![unit_prefix] == nil {
            values[unit_type]![unit_prefix] = HugeFloat.zero
        }
        values[unit_type]![unit_prefix]! += unit.value
    }
}
