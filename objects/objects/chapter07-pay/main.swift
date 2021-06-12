import Foundation

enum Employees {
    /// 직원 목록
    static let employees = ["직원A", "직원B", "직원C", "아르바이트D", "아르바이트E", "아르바이트F"]
    /// 기본급
    static let basePays: [Double] = [400, 300, 250, 1, 1, 1.5]
    /// 아르바이트 직원인지 여부
    static let hourlys = [false, false, false, true, true, true]
    /// 한달 간의 업무 누적 시간: 정규 직원의 경우 0
    static let timeCards: [Double] = [0, 0, 0, 120, 120, 120]

    static func calculatePay(name: String, taxRate: Double) -> Double {
        var pay: Double = 0
        if isHourly(name: name) {
            pay = calculateHourlyPayFor(name: name, taxRate: taxRate)
        } else {
            pay = calculatePayFor(name: name, taxRate: taxRate)
        }
        return pay
    }

    static func isHourly(name: String) -> Bool {
        return hourlys[employees.firstIndex(of: name)!]
    }

    // 아르바이트 직원의 급여를 계산한다.
    static func calculateHourlyPayFor(name: String, taxRate: Double) -> Double {
        let index = employees.firstIndex(of: name)!
        let basePay = Double(basePays[index]) * timeCards[index]
        return basePay - (basePay * taxRate)
    }

    /// 직원의 급여를 계산한다.
    static func calculatePayFor(name: String, taxRate: Double) -> Double {
        let index = employees.firstIndex(of: name)!
        let basePay = Double(basePays[index])
        return basePay - (basePay * taxRate)
    }

    /// 회사에 속한 모든 직원들의 기본급의 총합을 구한다.
    static func sumOfBasePays() -> Double {
        var result: Double = 0
        for name in employees {
            if !isHourly(name: name) {
                result += basePays[employees.firstIndex(of: name)!]
            }
        }
        return result
    }
}

enum Operations {
    case pay
    case basePays
}

/// 직원의 급여를 계산한다
func main(operation: Operations, name: String = "") {
    switch operation {
    case .pay:
        calculatePay(name: name)
    case .basePays:
        sumOfBasePays()
    }
}

func calculatePay(name: String) {
    let taxRate = getTaxRate()
    let pay = Employees.calculatePay(name: name, taxRate: taxRate)
    print(describeResult(name: name, pay: pay))
}

/// 사용자로부터 소득세율을 입력받는다.
func getTaxRate() -> Double {
    print("세율을 입력하세요: ")
    let taxRate = Double(readLine()!) ?? 0.0
    return taxRate
}

/// 양식에 맞게 결과를 출력한다.
func describeResult(name: String, pay: Double) -> String {
    return "이름: \(name), 급여: \(pay)"
}

func sumOfBasePays() {
    print(Employees.sumOfBasePays())
}
