//
//  SequenceCondition.swift
//  objects
//
//  Created by 이지원 on 2021/05/21.
//

import Foundation

/**
 할인 조건: 순번 조건
 */
class SequenceCondition: DiscountCondition {
    private let sequence: Int

    init(sequence: Int) {
        self.sequence = sequence
    }

    /// screening의 상영 순번과 일치하는지를 판단하는 메서드
    func isSatisfiedBy(_ screening: Screening) -> Bool {
        return screening.isSequence(sequence)
    }
}
