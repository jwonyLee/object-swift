//
//  DiscountPolicy.swift
//  objects
//
//  Created by 이지원 on 2021/05/21.
//

import Foundation

/**
 할인 정책
 */
protocol DiscountPolicy {
    var conditions: [DiscountCondition] { get set }

    init(conditions: [DiscountCondition])

    func calculateDiscountAmount(screening: Screening) -> Money

    func getDiscountAmount(screening: Screening) -> Money
}

extension DiscountPolicy {
    func calculateDiscountAmount(screening: Screening) -> Money {
        for each in conditions {
            if each.isSatisfiedBy(screening) {
                return getDiscountAmount(screening: screening)
            }
        }
        return Money.zero
    }
}
