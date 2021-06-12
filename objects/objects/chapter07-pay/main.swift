import Foundation

/* 추상 데이터 타입을 사용하는 클라이언트 코드 */
let employees = [
    Employee(name: "직원A", basePay: 400, hourly: false, timeCard: 0),
    Employee(name: "직원B", basePay: 300, hourly: false, timeCard: 0),
    Employee(name: "직원C", basePay: 250, hourly: false, timeCard: 0),
    Employee(name: "아르바이트D", basePay: 1, hourly: true, timeCard: 120),
    Employee(name: "아르바이트E", basePay: 1, hourly: true, timeCard: 120),
    Employee(name: "아르바이트F", basePay: 1, hourly: true, timeCard: 120),
]

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
    var employee: Employee?
    for each in employees {
        if each.name == name {
            employee = each
            break
        }
    }
    if let pay = employee?.calculatePay(taxRate: taxRate) {
        print(describeResult(name: name, pay: pay))
    }
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
    var result: Double = 0
    for each in employees {
        result += each.monthlyBasePay()
    }
    print(result)
}

main(operation: .pay, name: "직원A")
