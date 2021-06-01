import Foundation

class AmountDiscountMovie: Movie {
    private let discountAmount: Money

    init(title: String, runningTime: TimeInterval, fee: Money, discountAmount: Money, discountConditions: [DiscountCondition]) {
        self.discountAmount = discountAmount
        super.init(title: title, runningTime: runningTime, fee: fee, discountConditions: discountConditions)
    }

    override func calculateDiscountAmount() -> Money {
        return discountAmount
    }
}
