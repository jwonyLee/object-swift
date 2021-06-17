//
//  HourlyEmployee.swift
//  objects
//
//  Created by 이지원 on 2021/06/12.
//

import Foundation

class HourlyEmployee: Employee {
    var name: String
    var basePay: Double
    var timeCard: Double

    init(name: String, basePay: Double, timeCard: Double) {
        self.name = name
        self.basePay = basePay
        self.timeCard = timeCard
    }

    func calculatePay(taxRate: Double) -> Double {
        return (basePay * timeCard) - (basePay * timeCard) * taxRate
    }

    func monthlyBasePay() -> Double {
        return 0
    }
}
