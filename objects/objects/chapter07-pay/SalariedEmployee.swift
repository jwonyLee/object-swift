//
//  SalariedEmployee.swift
//  objects
//
//  Created by 이지원 on 2021/06/12.
//

import Foundation

class SalariedEmployee: Employee {
    var name: String
    var basePay: Double

    init(name: String, basePay: Double) {
        self.name = name
        self.basePay = basePay
    }

    func calculatePay(taxRate: Double) -> Double {
        return basePay - (basePay * taxRate)
    }

    func monthlyBasePay() -> Double {
        return basePay
    }

}
