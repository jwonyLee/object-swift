//
//  Movie_.swift
//  objects
//
//  Created by 이지원 on 2021/05/28.
//

import Foundation


/**
 영화 정보: chapter02.Movie와 겹치므로 이름에 언더바를 덧붙임
 - title: 제목
 - runningTime: 상영시간
 - fee: 기본 요금
 - discountPolicy: 할인 정책
 */
class Movie_ {
    private let title: String
    private let runningTime: DateInterval
    private let fee: Money
    private var discountConditions: [DiscountCondition]

    private let movieType: MovieType
    private let discountAmount: Money
    private let discountPercent: Double

    init(title: String, runningTime: DateInterval, fee: Money, discountConditions: [DiscountCondition],
         movieType: MovieType, discountAmount: Money, discountPercent: Double) {
        self.title = title
        self.runningTime = runningTime
        self.fee = fee
        self.discountConditions = discountConditions

        self.movieType = movieType
        self.discountAmount = discountAmount
        self.discountPercent = discountPercent
    }
}
