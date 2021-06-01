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

    /**
     관람객을 맞이하는 메서드
     - 관람객의 가방 안에 초대장이 들어 있으면: 판매원에게서 받은 티켓을 관람객의 가방 안에 넣어준다.
     - 관람객의 가방 안에 초대장이 없으면: 관람객의 가방에서 티켓 금액만큼 차감, 매표소에 금액만큼 증감, 관람객의 가방 안에 티켓을 넣어준다.
     */
    func enter(audience: Audience) {
        ticketSeller.sellTo(audience: audience)
    }
}
