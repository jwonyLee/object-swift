//
//  NoneDiscountPolicy.swift
//  objects
//
//  Created by 이지원 on 2021/05/21.
//

import Foundation

/**
 할인되지 않는 정책
 */
class NoneDiscountPolicy: DiscountPolicy {
    func calculateDiscountAmount(screening: Screening) -> Money {
        return Money.zero
    }
}
