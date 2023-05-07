//
//  ElapsedTime.swift
//  
//
//  Created by Evan Anderson on 5/1/23.
//

import Foundation
import huge_numbers

public struct ElapsedTime : Hashable {
    private var values:[TimeUnitType:[UnitPrefix:HugeFloat]]
    
    public init(_ values: [TimeUnitType:[UnitPrefix:HugeFloat]] = [:]) {
        self.values = values
    }
    public init(_ value: TimeUnit) {
        let target_types:[TimeUnitType] = [TimeUnitType.decade, TimeUnitType.year, TimeUnitType.week, TimeUnitType.day, TimeUnitType.hour, TimeUnitType.minute, TimeUnitType.second]
        var all_values:[TimeUnitType:[UnitPrefix:HugeFloat]] = [:]
        for type in target_types {
            if let type_values:[UnitPrefix:HugeFloat] = all_values[type] {
                all_values[type] = [:]
                for (unit_prefix, value) in type_values {
                    all_values[type]![unit_prefix] = value
                }
            }
        }
        values = all_values
    }
    
    public var description : String {        
        let target_types:[TimeUnitType] = [TimeUnitType.decade, TimeUnitType.year, TimeUnitType.week, TimeUnitType.day, TimeUnitType.hour, TimeUnitType.minute, TimeUnitType.second]
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
        var weeks:HugeFloat = time_values[.week] ?? HugeFloat.zero
        var years:HugeFloat = time_values[.year] ?? HugeFloat.zero
        var decades:HugeFloat = time_values[.decade] ?? HugeFloat.zero
                
        let sixty:HugeFloat = HugeFloat("60"), twenty_four:HugeFloat = HugeFloat("24"), seven:HugeFloat = HugeFloat("7"), three_sixty_five:HugeFloat = HugeFloat("365.25"), ten:HugeFloat = HugeFloat("10")
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
            let amount:HugeFloat = (hours / twenty_four).integer.to_float
            hours -= amount * twenty_four
            days += amount
        }
        if days >= three_sixty_five {
            let amount:HugeFloat = (days / three_sixty_five).integer.to_float
            days -= amount * three_sixty_five
            years += amount
        }
        if years >= ten {
            let amount:HugeFloat = (years / ten).integer.to_float
            years -= amount * ten
            decades += amount
        }
        if days >= seven {
            let amount:HugeFloat = (days / seven).integer.to_float
            days -= amount * seven
            weeks += amount
        }
        
        var string:String = "", needs_comma:Bool = false
        if !decades.integer.is_zero {
            string.append(decades.description + "decades")
            needs_comma = true
        }
        if !years.integer.is_zero {
            string.append((needs_comma ? ", " : "") + years.description + "yr")
            needs_comma = true
        }
        if !weeks.integer.is_zero {
            string.append((needs_comma ? ", " : "") + weeks.description + "weeks")
            needs_comma = true
        }
        if !days.integer.is_zero {
            string.append((needs_comma ? ", " : "") + days.description + "d")
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
        if string.isEmpty || !seconds.integer.is_zero {
            string.append((needs_comma ? ", " : "") + seconds.description + "s")
        }
        return string
    }
    
    public func to_unit(unit_prefix: UnitPrefix = UnitPrefix.normal, unit_type: TimeUnitType) -> TimeUnit {
        let target_types:[TimeUnitType] = [TimeUnitType.decade, TimeUnitType.year, TimeUnitType.week, TimeUnitType.day, TimeUnitType.hour, TimeUnitType.minute, TimeUnitType.second]
        var unit:TimeUnit = TimeUnit(prefix: unit_prefix, type: unit_type, value: HugeFloat.zero)
        for type in target_types {
            if let type_values:[UnitPrefix:HugeFloat] = values[type] {
                for (target_unit_prefix, value) in type_values {
                    unit += TimeUnit(prefix: target_unit_prefix, type: type, value: value).to_unit(prefix: unit_prefix, unit: unit_type)
                }
            }
        }
        return unit
    }
    
    public mutating func simplify() {
        var seconds:HugeFloat = normalize(unit_type: TimeUnitType.second)
        var minutes:HugeFloat = normalize(unit_type: TimeUnitType.minute)
        var hours:HugeFloat = normalize(unit_type: TimeUnitType.hour)
        var days:HugeFloat = normalize(unit_type: TimeUnitType.day)
        var weeks:HugeFloat = normalize(unit_type: TimeUnitType.week)
        var years:HugeFloat = normalize(unit_type: TimeUnitType.year)
        var decades:HugeFloat = normalize(unit_type: TimeUnitType.decade)
                
        let sixty:HugeFloat = HugeFloat("60"), twenty_four:HugeFloat = HugeFloat("24"), seven:HugeFloat = HugeFloat("7"), three_sixty_five:HugeFloat = HugeFloat("365.25"), ten:HugeFloat = HugeFloat("10")
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
            let amount:HugeFloat = (hours / twenty_four).integer.to_float
            hours -= amount * twenty_four
            days += amount
        }
        if days >= three_sixty_five {
            let amount:HugeFloat = (days / three_sixty_five).integer.to_float
            days -= amount * three_sixty_five
            years += amount
        }
        if years >= ten {
            let amount:HugeFloat = (years / ten).integer.to_float
            years -= amount * ten
            decades += amount
        }
        if days >= seven {
            let amount:HugeFloat = (days / seven).integer.to_float
            days -= amount * seven
            weeks += amount
        }
        
        values = [:]
        set_value(type: TimeUnitType.second, value: seconds)
        set_value(type: TimeUnitType.minute, value: minutes)
        set_value(type: TimeUnitType.hour, value: hours)
        set_value(type: TimeUnitType.day, value: days)
        set_value(type: TimeUnitType.week, value: weeks)
        set_value(type: TimeUnitType.year, value: years)
        set_value(type: TimeUnitType.decade, value: decades)
    }
    
    private mutating func set_value(_ unit_prefix: UnitPrefix = UnitPrefix.normal, type: TimeUnitType, value: HugeFloat) {
        guard !value.integer.is_zero else { return }
        if values[type] == nil {
            values[type] = [:]
        }
        values[type]![unit_prefix] = value
    }
    private func normalize(unit_type: TimeUnitType) -> HugeFloat {
        var normal_value:HugeFloat = HugeFloat.zero
        if let all_values:[UnitPrefix:HugeFloat] = values[unit_type] {
            for (unit_prefix, value) in all_values {
                normal_value += unit_prefix.convert_to(UnitPrefix.normal, value: value)
            }
        }
        return normal_value
    }
}
public extension ElapsedTime {
    static func >= (left: ElapsedTime, right: TimeUnit) -> Bool {
        return left.to_unit(unit_prefix: right.prefix, unit_type: right.type) >= right
    }
}
public extension ElapsedTime {
    static func == (left: ElapsedTime, right: TimeUnit) -> Bool {
        return left.to_unit(unit_prefix: right.prefix, unit_type: right.type) == right
    }
}

/*
 Addition
 */
public extension ElapsedTime {
    static func += (left: inout ElapsedTime, right: TimeUnit) {
        let unit_type:TimeUnitType = right.type
        if left.values[unit_type] == nil {
            left.values[unit_type] = [:]
        }
        
        let unit_prefix:UnitPrefix = right.prefix
        if left.values[unit_type]![unit_prefix] == nil {
            left.values[unit_type]![unit_prefix] = HugeFloat.zero
        }
        left.values[unit_type]![unit_prefix]! += right.value
    }
}
/*
 Subtraction
 */
public extension ElapsedTime {
    static func - (left: ElapsedTime, right: TimeUnit) -> ElapsedTime {
        var time:TimeUnit = left.to_unit(unit_prefix: right.prefix, unit_type: right.type)
        time -= right
        print("ElapsedTime;-;time=" + time.description)
        return ElapsedTime(time)
    }
    static func -= (left: inout ElapsedTime, right: TimeUnit) {
        let units:TimeUnit = left.to_unit(unit_prefix: right.prefix, unit_type: right.type)
        let result:TimeUnit = units - right
        print("ElapsedTime;-=;left=" + left.description + ";right=" + right.description + ";units=" + units.description + ";result=" + result.description)
        left = ElapsedTime(result)
    }
}
