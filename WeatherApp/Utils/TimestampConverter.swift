//
//  TimestampConverter.swift
//  WeatherApp
//
//  Created by Federico on 06/02/2022.
//

import Foundation
import CloudKit

func formatTS(_ timestamp: Int) -> String {
    let epocTime = TimeInterval(timestamp)
    let myDate = NSDate(timeIntervalSince1970: epocTime) as Date
    
    let components = Calendar.current.dateComponents([.hour, .minute, .day, .month, .year], from: myDate)
    var hour = components.hour ?? 00
    var minute = components.minute ?? 00
    let day = components.day ?? 0
    let month = components.month ?? 0
    let year = components.year ?? 0
    
    // Format hour
    var fmtHour = "\(hour)"
    if hour < 10 {
        fmtHour = "0\(hour)"
    }
    
    return "\(day)-\(month) (\(fmtHour):00)"
}
