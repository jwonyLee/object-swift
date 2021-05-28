//
//  Rectangle.swift
//  objects
//
//  Created by 이지원 on 2021/05/28.
//

import Foundation

/**
 사각형
 - left: 왼쪽 좌표
 - top: 위쪽 좌표
 - right: 오른쪽 좌표
 - bottom: 아래쪽 좌표
 */
class Rectangle {
    private var left: Int
    private var top: Int
    private var right: Int
    private var bottom: Int

    init(left: Int, top: Int, right: Int, bottom: Int) {
        self.left = left
        self.top = top
        self.right = right
        self.bottom = bottom
    }

    func getLeft() -> Int {
        return left
    }

    func setLeft(_ left: Int) {
        self.left = left
    }

    func getTop() -> Int {
        return top
    }

    func setTop(_ top: Int) {
        self.top = top
    }

    func getRight() -> Int {
        return right
    }

    func setRight(_ right: Int) {
        self.right = right
    }

    func getBottom() -> Int {
        return bottom
    }

    func setBottom(_ bottom: Int) {
        self.bottom = bottom
    }
}
