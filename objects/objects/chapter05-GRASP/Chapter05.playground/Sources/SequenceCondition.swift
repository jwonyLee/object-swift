import Foundation

class SequenceCondition: DiscountCondition {
    private let sequence: Int

    init(sequence: Int) {
        self.sequence = sequence
    }

    func isSatisfiedBy(screening: Screening) -> Bool {
        return sequence == screening.getSequence()
    }
}
