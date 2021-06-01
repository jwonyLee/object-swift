import Foundation

class ReservationAgency {
    func reserve(screening: Screening, customer: Customer, audienceCount: Int) {
        let discountable: Bool = checkDiscountable(screening: screening)
        let fee: Money = calculateFee(screening: screening, )
    }

    private func checkDiscountable(screening: Screening) -> Bool {
        return screening.getMovie().getDiscountConditions()
            .map { isDiscountable(condition: $0, screening: screening)}
            .count >= 1
    }

    private func isDiscountable(condition: DiscountCondition, screening: Screening) -> Bool {
        if condition.getType() == DiscountConditionType.period {
            return isSatisfiedByPeriod(condition: condition, screening: screening)
        }
        return isSatisfiedBySequence(condition: condition, screening: screening)
    }

    private func isSatisfiedByPeriod(condition: DiscountCondition, screening: Screening) -> Bool {
        return screening.getWhenScreened().getDayOfWeek() == condition.getDayOfWeek() &&
            condition.getStartTime() <= screening.getWhenScreened() &&
            condition.getEndTime() >= screening.getWhenScreened()
    }

    private func isSatisfiedBySequence(condition: DiscountCondition, screening: Screening) -> Bool {
        return condition.getSequence() == screening.getSequence()
    }

    private func calculateFee(screening: Screening, discountable: Bool, audienceCount: Int) -> Money {
        if discountable {
            return screening.getMovie().getFee()
                .minus(calculateDiscountedFee(movie: screening.getMovie()))
                .times(percent: Double(audienceCount))
        }
        return screening.getMovie().getFee().times(percent: Double(audienceCount))
    }

    private func calculateDiscountedFee(movie: Movie) -> Money {
        switch movie.getMovieType() {
        case amountDiscount:
            return calculateAmountDiscountedFee(movie: movie)
        case percentDiscount:
            return calculatePercentDiscountedFee(movie: movie)
        case noneDiscount:
            return calculateNoneDiscountedFee(movie: movie)
        }
    }

    private func calculateAmountDiscountedFee(movie: Movie) -> Money {
        return movie.getDiscountAmount()
    }

    private func calculatePercentDiscountedFee(movie: Movie) -> Money {
        return movie.getFee().times(percent: movie.getDiscountPercent())
    }

    private func calculateNoneDiscountedFee(movie: Movie) -> Money {
        return Money.zero
    }

    private func createReservation(screening: Screening, customer: Customer, audienceCount: Int, fee: Money) -> Reservation {
        return Reservation(customer: customer, screening: screening, fee: fee, audienceCount: audienceCount)
    }
}
