//
//  Audience.swift
//  objects
//
//  Created by 이지원 on 2021/05/21.
//

import Foundation

/**
 관람객
 - bag: 가방
 */
class Audience {
    private let bag: Bag
    
    init(bag: Bag) {
        self.bag = bag
    }
    
    func getBag() -> Bag {
        return bag
    }

    func setTicket(_ ticket: Ticket) -> Double {
        if bag.hasInvitation() {
            bag.setTicket(ticket)
            return 0
        } else {
            bag.setTicket(ticket)
            bag.minusAmount(ticket.getFee())
            return ticket.getFee()
        }
    }
}
