//
//  Invitation.swift
//  objects
//
//  Created by 이지원 on 2021/05/21.
//

import Foundation

/**
 이벤트 당첨자에게 발송되는 초대장
 - when: 공연을 관람할 수 있는 초대일자
 */
class Invitation {
    private let when: Date
    
    init(when: Date) {
        self.when = when
    }
}
