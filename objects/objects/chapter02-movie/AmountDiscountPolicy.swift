//
//  AmountDiscountPolicy.swift
//  objects
//
//  Created by 이지원 on 2021/05/21.
//

import Foundation

/**
 고정 할인 정책
 - discountAmount: 할인 요금
 */
class AmountDiscountPolicy: DefaultDiscountPolicy {
    private var discountAmount: Money
    var conditions: [DiscountCondition] = []

    init(discountAmount: Money, conditions: [DiscountCondition]) {
        self.discountAmount = discountAmount
        self.conditions = conditions
    }

    override func getDiscountAmount(screening: Screening) -> Money {
        return discountAmount
    }
}
