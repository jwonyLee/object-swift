//
//  Reservation_.swift
//  objects
//
//  Created by 이지원 on 2021/05/28.
//

import Foundation

/**
 예매 정보: chapter02.Reservation과 겹치므로 이름에 언더바를 덧붙임
 - customer: 고객
 - screening: 상영 정보
 - fee: 예매 요금
 - audienceCount: 인원 수
 */
class Reservation {
    private var customer: Customer
    private var screening: Screening
    private var fee: Money
    private var audienceCount: Int

    init(customer: Customer, screening: Screening, fee: Money, audienceCount: Int) {
        self.customer = customer
        self.screening = screening
        self.fee = fee
        self.audienceCount = audienceCount
    }

    func getCustomer() -> Customer {
        return customer
    }

    func setCustomer(_ customer: Customer) {
        self.customer = customer
    }

    func getScreening() -> Screening {
        return screening
    }

    func setScreening(_ screening: Screening) {
        self.screening = screening
    }

    func getFee() -> Money {
        return fee
    }

    func setFee(_ fee: Money) {
        self.fee = fee
    }

    func getAudienceCount() -> Int {
        return audienceCount
    }

    func setAudienceCount(_ audienceCount: Int) {
        self.audienceCount = audienceCount
    }
}
