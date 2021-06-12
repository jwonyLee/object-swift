import Foundation

let employees: [Employee] = [
    SalariedEmployee(name: "직원A", basePay: 400),
    SalariedEmployee(name: "직원B", basePay: 300),
    SalariedEmployee(name: "직원C", basePay: 250),
    HourlyEmployee(name: "아르바이트D", basePay: 1, timeCard: 120),
    HourlyEmployee(name: "아르바이트E", basePay: 1, timeCard: 120),
    HourlyEmployee(name: "아르바이트F", basePay: 1, timeCard: 120),
]

enum Operations {
    case pay
    case basePays
}

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

func getTaxRate() -> Double {
    print("세율을 입력하세요: ")
    return Double(readLine()!)!
}

func describeResult(name: String, pay: Double) -> String {
    return "이름 : \(name), 급여 : \(pay)"
}

func sumOfBasePays() {
    var result: Double = 0
    for each in employees {
        result += each.monthlyBasePay()
    }
    print(result)
}

main(operation: .basePays)
main(operation: .pay, name: "아르바이트F")
