//
//  Screening.swift
//  objects
//
//  Created by 이지원 on 2021/05/21.
//

import Foundation

/**
 상영
 - movie: 상영할 영화
 - sequence: 순번
 - whenScreened: 상영 시작 시간
 */
class Screening {
    private let movie: Movie
    private let sequence: Int
    private let whenScreened: Date

    init(movie: Movie, sequence: Int, whenScreened: Date) {
        self.movie = movie
        self.sequence = sequence
        self.whenScreened = whenScreened
    }

    /// 상영 시작 시간을 반환하는 메서드
    func getStartTime() -> Date {
        return whenScreened
    }

    /// 순번의 일치 여부를 검사하는 메서드
    func isSequence(_ sequence: Int) -> Bool {
        return self.sequence == sequence
    }

    /// 기본 요금을 반환하는 메서드
    func getMovieFee() -> Money {
        return movie.getFee()
    }

    /**
     영화를 예매한 후 예매 정보를 반환하는 메서드
     - customer: 예매자
     - audienceCount: 인원수
     */
    func reserve(customer: Customer, audienceCount: Int) -> Reservation {
        return Reservation(customer: customer,
                           screening: self,
                           fee: calculateFee(audienceCount),
                           audienceCount: audienceCount)
    }

    private func calculateFee(_ audienceCount: Int) -> Money {
        return movie.calculateMovieFee(self).times(audienceCount)
    }
}
