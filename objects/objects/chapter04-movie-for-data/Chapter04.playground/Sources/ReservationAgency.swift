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

    func reserve(screening: Screening, customer: Customer, audienceCount: Int) -> Reservation {
        let fee = screening.calculateFee(audienceCount: audienceCount)
        return Reservation(customer: customer, screening: screening, fee: fee, audienceCount: audienceCount)
    }
}
