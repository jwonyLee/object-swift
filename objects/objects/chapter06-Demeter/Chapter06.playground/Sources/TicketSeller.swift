//
//  TicketSeller.swift
//  objects
//
//  Created by 이지원 on 2021/05/21.
//

import Foundation

/**
 판매원
 - ticketOffice: 판매원이 일하는 매표소
 */
class TicketSeller {
    private var ticketOffice: TicketOffice
    
    init(ticketOffice: TicketOffice) {
        self.ticketOffice = ticketOffice
    }
    
    func getTicketOffice() -> TicketOffice {
        return ticketOffice
    }

    func setTicket(audience: Audience) {
        if audience.getBag().hasInvitation() {
            let ticket: Ticket = ticketOffice.getTicket()
            audience.getBag().setTicket(ticket)
        } else {
            let ticket: Ticket = ticketOffice.getTicket()
            audience.getBag().minusAmount(ticket.getFee())
            ticketOffice.plusAmount(ticket.getFee())
            audience.getBag().setTicket(ticket)
        }
    }
}
