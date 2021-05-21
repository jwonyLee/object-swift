//
//  DiscountPolicy.swift
//  objects
//
//  Created by 이지원 on 2021/05/21.
//

import Foundation

/**
 할인 정책 프로토콜
 */
protocol DiscountPolicy {
    func calculateDiscountAmount(screening: Screening) -> Money
}
