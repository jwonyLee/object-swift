//
//  MovieType.swift
//  objects
//
//  Created by 이지원 on 2021/05/28.
//

import Foundation

/**
 영화 타입
 - amountDiscount: 금액 할인 정책
 - percentDiscount: 비율 할인 정책
 - noneDiscount: 미적용
 */
enum MovieType {
    case amountDiscount
    case percentDiscount
    case noneDiscount
}
