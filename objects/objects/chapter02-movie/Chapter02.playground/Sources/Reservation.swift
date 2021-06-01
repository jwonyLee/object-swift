//
//  Reservation.swift
//  objects
//
//  Created by 이지원 on 2021/05/21.
//

import Foundation

/**
 예매 정보
 - customer: 고객
 - screening: 상영 정보
 - fee: 예매 요금
 - audienceCount: 인원 수
 */
class Reservation {
    private let customer: Customer
    private let screening: Screening
    private let fee: Money
    private let audienceCount: Int

    init(customer: Customer, screening: Screening, fee: Money, audienceCount: Int) {
        self.customer = customer
        self.screening = screening
        self.fee = fee
        self.audienceCount = audienceCount
    }
}
