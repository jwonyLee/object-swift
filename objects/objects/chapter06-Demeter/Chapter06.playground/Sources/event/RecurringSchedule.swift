import Foundation

/*
 RecurringSchedule: 주 단위로 반복되는 일정
 - subject: 주제
 - dayOfWeek: 반복될 요일
 - from: 시작 시간
 - duration: 기간
 */
public class RecurringSchedule {
    private let subject: String
    private let dayOfWeek: DayOfWeek
    private let from: Date
    private let duration: TimeInterval

    public init(subject: String, dayOfWeek: DayOfWeek, from: Date, duration: TimeInterval) {
        self.subject = subject
        self.dayOfWeek = dayOfWeek
        self.from = from
        self.duration = duration
    }

    public func getDayOfWeek() -> DayOfWeek {
        return dayOfWeek
    }

    public func getFrom() -> Date {
        return from
    }

    public func getDuration() -> TimeInterval {
        return duration
    }
}
