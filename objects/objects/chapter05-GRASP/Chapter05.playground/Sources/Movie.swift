import Foundation

/**
 영화 정보
 - title: 제목
 - runningTime: 상영시간
 - fee: 기본 요금
 - discountConditions: 할인 조건
 */
class Movie {
    private let title: String
    private let runningTime: TimeInterval
    private let fee: Money
    private var discountConditions: [DiscountCondition]

    init(title: String, runningTime: TimeInterval, fee: Money, discountConditions: [DiscountCondition]) {
        self.title = title
        self.runningTime = runningTime
        self.fee = fee
        self.discountConditions = discountConditions
    }

    /// 영화 가격을 계산하라
    func calculateMovieFee(screeening: Screening) -> Money {
        if isDiscountable(screeening) {
            return fee.minus(amount: calculateDiscountAmount())
        }

        return fee
    }

    /// 할인 여부 판단
    private func isDiscountable(_ screening: Screening) -> Bool {
        return discountConditions
            .map { $0.isSatisfiedBy(screening: screening) }
            .count >= 1
    }

    // 할인 요금 계산
    func calculateDiscountAmount() -> Money {
        fatalError("This method must be overridden")
    }

    func getFee() -> Money {
        return fee
    }
}
