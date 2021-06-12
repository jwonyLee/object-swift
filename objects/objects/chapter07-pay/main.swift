import Foundation

/// 직원 목록
let employees = ["직원A", "직원B", "직원C"]
/// 기본급
let basePays = [400, 300, 250]

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
    let pay = calculatePayFor(name: name, taxRate: taxRate)
    print(describeResult(name: name, pay: pay))
}

/// 사용자로부터 소득세율을 입력받는다.
func getTaxRate() -> Double {
    print("세율을 입력하세요: ")
    let taxRate = Double(readLine()!) ?? 0.0
    return taxRate
}

/// 직원의 급여를 계산한다.
func calculatePayFor(name: String, taxRate: Double) -> Double {
    let index = employees.firstIndex(of: name)!
    let basePay = Double(basePays[index])
    return basePay - (basePay * taxRate)
}

/// 양식에 맞게 결과를 출력한다.
func describeResult(name: String, pay: Double) -> String {
    return "이름: \(name), 급여: \(pay)"
}

/// 회사에 속한 모든 직원들의 기본급의 총합을 구한다.
func sumOfBasePays() {
    var result = 0
    for basePay in basePays {
        result += basePay
    }
    print(result)
}

main(operation: .basePays)
main(operation: .pay, name: "직원A")
