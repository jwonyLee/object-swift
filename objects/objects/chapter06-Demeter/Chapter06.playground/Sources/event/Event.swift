import Foundation

/**
 이벤트: 특정 일자에 실제로 발생하는 사건
 - subject: 이벤트 주제
 - from: 시작 일시
 - duration: 소요 시간
 */
public class Event {
    private let subject: String
    private var from: Date
    private let duration: TimeInterval

    public init(subject: String, from: Date, duration: TimeInterval) {
        self.subject = subject
        self.from = from
        self.duration = duration
    }

    public func isSatisfied(schedule: RecurringSchedule) -> Bool {
        if from.getDayOfWeek() != schedule.getDayOfWeek() ||
            from == schedule.getFrom() ||
            duration == schedule.getDuration() {
            return false
        }
        return true
    }

    public func reschedule(_ schedule: RecurringSchedule) {
        /* java code
        from = LocalDateTime.of(from.toLocalDate().plusDays(daysDistance(schedule)), schedule.getFrom())
        duration = schedule.getDuration()
         */
    }

    private func daysDistance(schedule: RecurringSchedule) -> Int {
        return schedule.getDayOfWeek().rawValue - from.getDayOfWeek().rawValue
    }
}
