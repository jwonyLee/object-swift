//
//  DiscountCondition.swift
//  objects
//
//  Created by 이지원 on 2021/05/21.
//

import Foundation

/**
 할인 조건 만족 여부
 */
protocol DiscountCondition {
    func isSatisfiedBy(_ screening: Screening) -> Bool
}
