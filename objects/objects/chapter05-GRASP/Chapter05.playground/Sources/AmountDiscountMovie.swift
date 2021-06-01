import Foundation

class AmountDiscountMovie: Movie {
    private let discountAmount: Money

    init(title: String, runningTime: TimeInterval, fee: Money, discountAmount: Money, discountConditions: [DiscountCondition]) {
        super.init(title: title, runningTime: runningTime, fee: fee, discountConditions: discountConditions)
        self.discountAmount = discountAmount
    }

    override func calculateDiscountAmount() -> Money {
        return discountAmount
    }
}
