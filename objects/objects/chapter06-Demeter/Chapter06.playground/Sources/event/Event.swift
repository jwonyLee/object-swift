import Foundation

/**
 이벤트: 특정 일자에 실제로 발생하는 사건
 - subject: 이벤트 주제
 - from: 시작 일시
 - duration: 소요 시간
 */
class Event {
    private let subject: String
    private let from: Date
    private let duration: TimeInterval

    init(subject: String, from: Date, duration: TimeInterval) {
        self.subject = subject
        self.from = from
        self.duration = duration
    }
}
