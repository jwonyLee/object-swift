//
//  ReservationAgency.swift
//  objects
//
//  Created by 이지원 on 2021/05/28.
//

import Foundation

/**
 영화 예매 절차
 */
class ReservationAgency {

    func reserve(screening: Screening_, customer: Customer, audienceCount: Int) -> Reservation_ {
        let movie: Movie_ = screening.getMovie()

        var discountable: Bool = false
        for condition in movie.getDiscountConditions() {
            if condition.getType() == DiscountConditionType.period {
                discountable = screening.getWhenScreened().getDayOfWeek() == condition.getDayOfWeek() &&
                    condition.getStartTime() <= screening.getWhenScreened() &&
                    condition.getEndTime() >= screening.getWhenScreened()
            } else {
                discountable = condition.getSequence() == screening.getSequence()
            }

            if discountable {
                break
            }
        }

        var fee: Money = Money(amount: 0)
        if discountable {
            var discountAmount: Money = Money.zero
            switch movie.getMovieType() {
            case .amountDiscount:
                discountAmount = movie.getDiscountAmount()
            case .percentDiscount:
                discountAmount = movie.getFee().times(percent: movie.getDiscountPercent())
            case .noneDiscount:
                discountAmount = Money.zero
            }

            fee = movie.getFee().minus(amount: discountAmount)
        } else {
            fee = movie.getFee()
        }

        return Reservation_(customer: customer, screening: screening, fee: fee, audienceCount: audienceCount)
    }
}
