//
//  Money.swift
//  objects
//
//  Created by 이지원 on 2021/05/21.
//

import Foundation

/**
 금액
 - amount: 실제 값
 */
class Money {
    static let zero: Money = Money.wons(0)

    private let amount: Decimal

    init(amount: Decimal) {
        self.amount = amount
    }

    static func wons(_ amount: Double) -> Money {
        return Money(amount: Decimal(amount))
    }

    func plus(amount: Money) -> Money {
        return Money(amount: self.amount + amount.amount)
    }

    func minus(amount: Money) -> Money {
        return Money(amount: self.amount - amount.amount)
    }

    func times(percent: Double) -> Money {
        return Money(amount: self.amount * Decimal(percent))
    }

    func isLessThan(other: Money) -> Bool {
        return amount < other.amount
    }

    func isGreaterThanOrEqual(other: Money) -> Bool {
        return amount >= other.amount
    }
}
