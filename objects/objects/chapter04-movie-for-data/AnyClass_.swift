//
//  AnyClass_.swift
//  objects
//
//  Created by 이지원 on 2021/05/28.
//

import Foundation

/**
 임의의 외부 클래스: Swift에는 AnyClass가 이미 존재하므로 _를 덧붙임
 */
class AnyClass_ {
    func anyMethod(rectangle: Rectangle, multiple: Int) {
        rectangle.setRight(rectangle.getRight() * multiple)
        rectangle.setBottom(rectangle.getBottom() * multiple)
    }
}
