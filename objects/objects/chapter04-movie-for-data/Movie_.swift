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
    private var fee: Money
    private var discountConditions: [DiscountCondition]

    private var movieType: MovieType
    private var discountAmount: Money
    private var discountPercent: Double

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

    func getMovieType() -> MovieType {
        return movieType
    }

    func setMovieType(_ movieType: MovieType) {
        self.movieType = movieType
    }

    func getFee() -> Money {
        return fee
    }

    func setFee(_ fee: Money) {
        self.fee = fee
    }

    func getDiscountConditions() -> [DiscountCondition] {
        return discountConditions
    }

    func setDiscountConditions(_ discountConditions: [DiscountCondition]) {
        self.discountConditions = discountConditions
    }

    func getDiscountAmount() -> Money {
        return discountAmount
    }

    func setDiscountAmount(_ discountAmount: Money) {
        self.discountAmount = discountAmount
    }

    func getDiscountPercent() -> Double {
        return discountPercent
    }

    func setDiscountPercent(_ discountPercent: Double) {
        self.discountPercent = discountPercent
    }
}
