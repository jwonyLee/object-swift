import Foundation

class PercentDiscountMovie: Movie {
    private let percent: Double

    init(title: String, runningTime: TimeInterval, fee: Money, percent: Double, discountConditions: [DiscountCondition]) {
        self.percent = percent
        super.init(title: title, runningTime: runningTime, fee: fee, discountConditions: discountConditions)
    }

    override func calculateDiscountAmount() -> Money {
        return  getFee().times(percent: percent)
    }
}
