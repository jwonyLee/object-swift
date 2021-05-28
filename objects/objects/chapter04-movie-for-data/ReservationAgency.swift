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
        let fee = screening.calculateFee(audienceCount: audienceCount)
        return Reservation_(customer: customer, screening: screening, fee: fee, audienceCount: audienceCount)
    }
}
