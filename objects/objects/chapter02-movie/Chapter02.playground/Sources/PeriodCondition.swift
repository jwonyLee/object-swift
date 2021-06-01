//
//  PeriodCondition.swift
//  objects
//
//  Created by 이지원 on 2021/05/21.
//

import Foundation

/**
 할인 조건: 기간 조건
 - dayOfWeek: 요일
 - startTime: 시작 시간
 - endTime: 종료 시간
 */
class PeriodCondition: DiscountCondition {
    private let dayOfWeek: DayOfWeek
    private let startTime: Date
    private let endTime: Date

    init(dayOfWeek: DayOfWeek, startTime: Date, endTime: Date) {
        self.dayOfWeek = dayOfWeek
        self.startTime = startTime
        self.endTime = endTime
    }

    func isSatisfiedBy(_ screening: Screening) -> Bool {
        return screening.getStartTime().getDayOfWeek() == dayOfWeek &&
            startTime <= screening.getStartTime() &&
            endTime >= screening.getStartTime()
    }
}
