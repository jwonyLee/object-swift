import Foundation

/**
 할인 조건 만족 여부
 - type: 할인 조건 종류
 - sequence: 상영 순번
 - dayOfWeek: 요일
 - startTime: 시작 시간
 - endTime: 종료 시간
 */
protocol DiscountCondition {
    func isSatisfiedBy(screening: Screening) -> Bool
}
