import Foundation

/**
 할인 조건 만족 여부
 - type: 할인 조건 종류
 - sequence: 상영 순번
 - dayOfWeek: 요일
 - startTime: 시작 시간
 - endTime: 종료 시간
 */
class DiscountCondition {
    private let type: DiscountConditionType
    private let sequence: Int
    private let dayOfWeek: DayOfWeek
    private let startTime: Date
    private let endTime: Date

    init(type: DiscountConditionType, sequence: Int, dayOfWeek: DayOfWeek, startTime: Date, endTime: Date) {
        self.type = type
        self.sequence = sequence
        self.dayOfWeek = dayOfWeek
        self.startTime = startTime
        self.endTime = endTime
    }

    func isSatisfiedBy(screening: Screening) -> Bool {
        if type == DiscountConditionType.period {
            return isSatisfiedByPeriod(screening: screening)
        }

        return isSatisfiedBySequence(screening: screening)
    }

    private func isSatisfiedByPeriod(screening: Screening) -> Bool {
        return dayOfWeek == screening.getWhenScreened().getDayOfWeek() &&
            startTime <= screening.getStartTime() &&
            endTime >= screening.getStartTime()
    }

    private func isSatisfiedBySequence(screening: Screening) -> Bool {
        return sequence == screening.getSequence()
    }
}
