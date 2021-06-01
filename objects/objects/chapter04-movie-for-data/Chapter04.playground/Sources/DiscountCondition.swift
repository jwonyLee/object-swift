//
//  DiscountCondition_.swift
//  objects
//
//  Created by 이지원 on 2021/05/28.
//

import Foundation

/**
 할인 조건: chapter02.DiscountCondition과 겹치므로 이름에 언더바를 덧붙임
 - type: 할인 조건 타입
 - sequence: 상영 순번
 - dayOfWeek: 요일
 - startTime: 시작 시간
 - endTime: 종료 시간
 */
class DiscountCondition {
    private var type: DiscountConditionType

    private var sequence: Int

    private var dayOfWeek: DayOfWeek
    private var startTime: Date
    private var endTime: Date

    init(type: DiscountConditionType, sequence: Int, dayOfWeek: DayOfWeek, startTime: Date, endTime: Date) {
        self.type = type
        self.sequence = sequence
        self.dayOfWeek = dayOfWeek
        self.startTime = startTime
        self.endTime = endTime
    }

    func getType() -> DiscountConditionType {
        return type
    }

    func isDiscountable(dayOfWeek: DayOfWeek, time: Date) throws -> Bool {
        if type != DiscountConditionType.period {
            throw MovieSystemError.IllegalArgumentException
        }

        return self.dayOfWeek == dayOfWeek && self.startTime <= time && self.endTime >= time
    }

    func isDiscountable(sequence: Int) throws -> Bool {
        if type != DiscountConditionType.sequence {
            throw MovieSystemError.IllegalArgumentException
        }

        return self.sequence == sequence
    }
}
