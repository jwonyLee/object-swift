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

    func calculateFee(audienceCount: Int) -> Money {
        switch movie.getMovieType() {
        case .amountDiscount:
            if movie.isDiscountable(whenScreened: whenScreened, sequence: sequence) {
                do {
                    return try movie.calculateAmountDiscountedFee().times(percent: Double(audienceCount))
                } catch {
                    print(error.localizedDescription)
                }
            }
        case .percentDiscount:
            if movie.isDiscountable(whenScreened: whenScreened, sequence: sequence) {
                do {
                    return try movie.calculatePercentDiscountedFee().times(percent: Double(audienceCount))
                } catch {
                    print(error.localizedDescription)
                }
            }
        case .noneDiscount:
            do {
                return try movie.calculateNoneDiscountedFee().times(percent: Double(audienceCount))
            } catch {
                print(error.localizedDescription)
            }
        }


        return try! movie.calculateNoneDiscountedFee().times(percent: Double(audienceCount))
    }
}
