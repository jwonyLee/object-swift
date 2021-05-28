//
//  Screening_.swift
//  objects
//
//  Created by 이지원 on 2021/05/28.
//

import Foundation

/**
 상영 정보: chapter02.Screening와 겹치므로 이름에 언더바를 덧붙임
 - movie: 상영할 영화
 - sequence: 순번
 - whenScreened: 상영 시작 시간
 */
class Screening_ {
    private var movie: Movie_
    private var sequence: Int
    private var whenScreened: Date

    init(movie: Movie_, sequence: Int, whenScreened: Date) {
        self.movie = movie
        self.sequence = sequence
        self.whenScreened = whenScreened
    }

    func getMovie() -> Movie_ {
        return movie
    }

    func setMovie(_ movie: Movie_) {
        self.movie = movie
    }

    func getSequence() -> Int {
        return sequence
    }

    func setSequence(_ sequence: Int) {
        self.sequence = sequence
    }

    func getWhenScreened() -> Date {
        return whenScreened
    }

    func setWhenScreened(_ whenScreened: Date) {
        self.whenScreened = whenScreened
    }
}
