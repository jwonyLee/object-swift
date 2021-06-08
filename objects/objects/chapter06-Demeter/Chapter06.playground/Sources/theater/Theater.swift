//
//  Theater.swift
//  objects
//
//  Created by 이지원 on 2021/05/21.
//

import Foundation

/**
 소극장
 - ticketSeller: 판매원
 */
class Theater {
    private var ticketSeller: TicketSeller

    init(ticketSeller: TicketSeller) {
        self.ticketSeller = ticketSeller
    }

    func enter(audience: Audience) {
        ticketSeller.sellTo(audience: audience)
    }
}
