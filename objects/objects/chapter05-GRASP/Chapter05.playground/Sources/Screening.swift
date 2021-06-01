import Foundation

/**
 상영 정보
 - movie: 영화
 - sequence: 상영 순번
 - whenScreened: 상영 시간
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

    /// 예매하라
    func reserve(customer: Customer, audienceCount: Int) -> Reservation {
        return Reservation(customer: customer, screening: self, fee: calculateFee(audienceCount), audienceCount: audienceCount)
    }

    /// 가격을 계산하라
    func calculateFee(audienceCount: Int) -> Money {
        return movie.calculateMovieFee(screeening: self).times(percent: Double(audienceCount))
    }
}
