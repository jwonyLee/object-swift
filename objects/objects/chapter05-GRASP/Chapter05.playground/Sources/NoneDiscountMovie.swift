import Foundation

class NoneDiscountMovie: Movie {
    init(title: String, runningTime: TimeInterval, fee: Money) {
        super.init(title: title, runningTime: runningTime, fee: fee, discountConditions: [])
    }

    override func calculateDiscountAmount() -> Money {
        return Money.zero
    }
}
