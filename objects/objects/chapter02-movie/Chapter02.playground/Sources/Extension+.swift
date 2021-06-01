//
//  Extension+.swift
//  objects
//
//  Created by 이지원 on 2021/05/21.
//

import Foundation

extension Date {
    func getDayOfWeek() -> DayOfWeek {
        guard let day = DayOfWeek(rawValue: Calendar.current.component(.weekday, from: self)) else {
            fatalError()
        }
        return day
    }
}
