//
//  PercentDiscountPolicy.swift
//  objects
//
//  Created by 이지원 on 2021/05/21.
//

import Foundation

/**
 비율 할인 정책
 - percent: 할인 비율
 */
class PercentDiscountPolicy: DiscountPolicy {
    private var percent: Double
    var conditions: [DiscountCondition] = []

    init(percent: Double, conditions: [DiscountCondition]) {
        self.percent = percent
        self.conditions = conditions
    }

    func getDiscountAmount(screening: Screening) -> Money {
        return screening.getMovieFee().times(percent: percent)
    }


}
