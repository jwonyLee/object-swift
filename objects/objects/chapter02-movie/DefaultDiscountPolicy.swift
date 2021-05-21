//
//  DefaultDiscountPolicy.swift
//  objects
//
//  Created by 이지원 on 2021/05/21.
//

import Foundation

/**
 기본 할인 정책
 */
public class DefaultDiscountPolicy: DiscountPolicy {
    private var conditions: [DiscountCondition] = []

    func calculateDiscountAmount(screening: Screening) -> Money {
        for each in conditions {
            if each.isSatisfiedBy(screening) {
                return getDiscountAmount(screening: screening)
            }
        }
        return Money.zero
    }

    func getDiscountAmount(screening: Screening) -> Money {
        preconditionFailure("This method must be overridden") 
    }
}
