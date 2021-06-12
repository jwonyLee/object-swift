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
 - hourly: 아르바이트 직원 여부
 - timeCard: 작업시간
 */
struct Employee {
    let name: String
    let basePay: Double
    let hourly: Bool
    let timeCard: Double

    func calculatePay(taxRate: Double) -> Double {
        if hourly {
            return calculateHourlyPay(taxRate: taxRate)
        }
        return calculateSalariedPay(taxRate: taxRate)
    }

    func monthlyBasePay() -> Double {
        if hourly {
            return 0
        }
        return basePay
    }

    private func calculateHourlyPay(taxRate: Double) -> Double {
        return (basePay * timeCard) - (basePay * timeCard) * taxRate
    }

    private func calculateSalariedPay(taxRate: Double) -> Double {
        return basePay - (basePay * taxRate)
    }
}
