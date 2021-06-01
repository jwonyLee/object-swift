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
    private var discountConditions: [DiscountCondition_]

    private var movieType: MovieType
    private var discountAmount: Money
    private var discountPercent: Double

    init(title: String, runningTime: DateInterval, fee: Money, discountConditions: [DiscountCondition_],
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

    func calculateAmountDiscountedFee() throws -> Money {
        if movieType != MovieType.amountDiscount {
            throw MovieSystemError.IllegalArgumentException
        }

        return fee.minus(amount: discountAmount)
    }

    func calculatePercentDiscountedFee() throws -> Money {
        if movieType != MovieType.percentDiscount {
            throw MovieSystemError.IllegalArgumentException
        }

        return fee.minus(amount: fee.times(percent: discountPercent))
    }

    func calculateNoneDiscountedFee() throws -> Money {
        if movieType != MovieType.noneDiscount {
            throw MovieSystemError.IllegalArgumentException
        }

        return fee
    }

    func isDiscountable(whenScreened: Date, sequence: Int) -> Bool {
        for condition in discountConditions {
            if condition.getType() == DiscountConditionType.period {
                do {
                    if try condition.isDiscountable(dayOfWeek: whenScreened.getDayOfWeek(), time: whenScreened) {
                        return true
                    }
                } catch {
                    print("The movie type is not right.")
                }
            } else {
                do {
                    if try condition.isDiscountable(sequence: sequence) {
                        return true
                    }
                } catch {
                    print("The movie type is not right.")
                }
            }
        }
        return false
    }
}
