//
//  Bag.swift
//  objects
//
//  Created by 이지원 on 2021/05/21.
//

import Foundation

/**
 관람객이 소피품을 보관할 가방
 - amount: 현금
 - invitation: 초대장
 - ticket: 티켓
 */
class Bag {
    private var amount: Double
    private let invitation: Invitation?
    private var ticket: Ticket?

    init(invitation: Invitation?, amount: Double) {
        self.invitation = invitation
        self.amount = amount
    }

    convenience init(amount: Double) {
        self.init(invitation: nil, amount: amount)
    }

    func hold(_ ticket: Ticket) -> Double {
        if hasInvitation() {
            self.ticket = ticket
            return 0
        } else {
            self.ticket = ticket
            minusAmount(ticket.getFee())
            return ticket.getFee()
        }
    }

    /// 초대장의 보유 여부를 판단하는 메서드
    private func hasInvitation() -> Bool {
        return invitation != nil
    }

    /// 현금을 감소시키는 메서드
    private func minusAmount(_ amount: Double) {
        self.amount -= amount
    }
}
