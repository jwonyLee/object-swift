//
//  Movie.swift
//  objects
//
//  Created by 이지원 on 2021/05/21.
//

import Foundation

/**
 영화 정보
 - title: 제목
 - runningTime: 상영시간
 - fee: 기본 요금
 - discountPolicy: 할인 정책
 */
class Movie {
    private let title: String
    private let runningTime: DateInterval
    private let fee: Money
    private let discountPolicy: DiscountPolicy

    init(title: String, runningTime: DateInterval, fee: Money, discountPolicy: DiscountPolicy) {
        self.title = title
        self.runningTime = runningTime
        self.fee = fee
        self.discountPolicy = discountPolicy
    }

    func getFee() -> Money {
        return fee
    }

    /// discountPolicy에 calculateDiscountAmount 메시지를 전송해 할인 요금을 반환받아, 할인 요금을 차감한다.
    func calculateMovieFee(screening: Screening) -> Money {
        return fee.minus(amount: discountPolicy.calculateDiscountAmount(screening: screening))
    }
}
