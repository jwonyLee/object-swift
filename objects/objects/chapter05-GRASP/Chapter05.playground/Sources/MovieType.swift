import Foundation

/**
 할인 정책 종류
 - amountDiscount: 금액 할인 정책
 - percentDiscount: 비율 할인 정책
 - noneDiscount: 미적용
 */
enum MovieType {
    case amountDiscount
    case percentDiscount
    case noneDiscount
}
