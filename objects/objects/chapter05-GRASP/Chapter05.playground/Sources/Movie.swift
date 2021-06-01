import Foundation

/**
 영화 정보
 - title: 제목
 - runningTime: 상영시간
 - fee: 기본 요금
 - discountConditions: 할인 조건
 - movieType: 영화 종류
 - discountAmount: 할인 금액
 - discountPercent: 할인 비율
 */
class Movie {
    private let title: String
    private let runningTime: TimeInterval
    private let fee: Money
    private var discountConditions: [DiscountCondition]

    private let movieType: MovieType
    private let discountAmount: Money
    private let discountPercent: Double

    init(title: String, runningTime: TimeInterval, fee: Money, discountConditions: [DiscountCondition], movieType: MovieType, discountAmount: Money, discountPercent: Double) {
        self.title = title
        self.runningTime = runningTime
        self.fee = fee
        self.discountConditions = discountConditions
        self.movieType = movieType
        self.discountAmount = discountAmount
        self.discountPercent = discountPercent
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
            .map { $0.isSatisfiedBy(screening) }
            .filter { $0.count < 1 }
    }

    // 할인 요금 계산
    private func calculateDiscountAmount() -> Money {
        switch movieType {
        case .amountDiscount:
            return calculateAmountDiscountAmount()
        case .percentDiscount:
            return calculatePercentDiscountAmount()
        case .noneDiscount:
            return calculateNoneDiscountAmount()
        }
    }

    private func calculateAmountDiscountAmount() -> Money {
        return discountAmount
    }

    private func calculatePercentDiscountAmount() -> Money {
        return fee.times(percent: discountPercent)
    }

    private func calculateNoneDiscountAmount() -> Money {
        return Money.zero
    }
}
