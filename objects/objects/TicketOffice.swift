//
//  TicketOffice.swift
//  objects
//
//  Created by 이지원 on 2021/05/21.
//

import Foundation

/**
 매표소
 - amount: 판매 금액
 - tickets: 판매하거나 교환해 줄 티켓의 목록
 */
class TicketOffice {
    private var amount: Double
    private var tickets: [Ticket] = []

    init(amount: Double, tickets: [Ticket]) {
        self.amount = amount
        self.tickets = tickets
    }

    func sellTicketTo(_ audience: Audience) {
        plusAmount(audience.buy(ticket: getTicket()))
    }

    private func getTicket() -> Ticket {
        return tickets.removeFirst()
    }

    private func plusAmount(_ amount: Double) {
        self.amount += amount
    }
}
