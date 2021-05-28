//
//  Customer.swift
//  objects
//
//  Created by 이지원 on 2021/05/28.
//

import Foundation

/**
 고객 정보
 - name: 이름
 - id: 아이디
 */
class Customer {
    private let name: String
    private let id: String

    init(name: String, id: String) {
        self.name = name
        self.id = id
    }
}
