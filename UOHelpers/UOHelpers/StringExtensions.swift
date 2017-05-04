//
//  StringExtensions.swift
//  UOHelpers
//
//  Created by Jonathan  Silva on 04/05/17.
//  Copyright © 2017 Uroboros Studios. All rights reserved.
//

import Foundation

let deviceLocale = Locale(identifier: "es_Es")
let calendar = Calendar.current

public extension Date {
    
    public func convertToString(_ format: String = "yyyy-MM-dd") -> String {
        let formatter = self.customFormatter(format)
        return formatter.string(from: self)
    }
    
    public func getComponent(_ date: Date) -> DateComponents {
        return (calendar as NSCalendar).components([.year, .month], from: date)
    }
    
    public func customFormatter(_ format: String) -> DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        formatter.locale = deviceLocale
        return formatter
    }
    
    public var getAge : Int {
        let components = (calendar as NSCalendar).components([.day,.month,.year], from: self, to: Date(), options: [])
        return components.year!
    }
    
    public func addHours(_ hoursToAdd:Int) -> Date {
        let secondsInHours : TimeInterval = Double(hoursToAdd) * 60 * 60
        let dateWithHoursAdded : Date = self.addingTimeInterval(secondsInHours)
        return dateWithHoursAdded
    }
}

public extension String {
    
    public var toDate : Date {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        formatter.locale = deviceLocale
        return formatter.date(from: self)!
    }
    
    public subscript (i: Int) -> Character {
        return self[self.characters.index(self.startIndex, offsetBy: i)]
    }
    
    public var time2Date : Date {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        formatter.locale = Locale(identifier: "es_Es");
        return formatter.date(from: self)!
    }
    
}
