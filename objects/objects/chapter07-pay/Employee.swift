//
//  Employee.swift
//  objects
//
//  Created by 이지원 on 2021/06/12.
//

import Foundation

/**
 직원
 - name: 이름
 - basePay: 기본급
 */
protocol Employee {
    var name: String { get set }
    var basePay: Double { get set }

    func calculatePay(taxRate: Double) -> Double

    func monthlyBasePay() -> Double
}
