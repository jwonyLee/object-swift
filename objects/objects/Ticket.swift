//
//  Ticket.swift
//  objects
//
//  Created by 이지원 on 2021/05/21.
//

import Foundation

/**
 공연 관람 티켓
 - fee: 티켓의 가격
 */
class Ticket {
    private var fee: Double

    init(fee: Double) {
        self.fee = fee
    }

    func getFee() -> Double {
        return fee
    }
}
