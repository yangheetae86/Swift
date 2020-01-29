import Foundation

let now = Date()
print("현재 일시 : \(now)")

var formatter = DateFormatter()
formatter.dateFormat = "yyyy-MMMM-d H:m:z";

let nowStr = formatter.string(from: now);
print("현재 일시 : \(nowStr)")

let yesterday = Date(timeIntervalSinceNow: (-60*60*24))
//let yesterdayStr = formatter.string(from: yesterday)
//print("1일전 일시: \(yesterdayStr)")
print("1일전 일시: \(formatter.string(from: yesterday))")

let tomorrow = Date(timeIntervalSinceNow: (60*60*24))
print("1일후 일시 : \(formatter.string(from: tomorrow))")
//let tomorrowStr = formatter.string(from: tomorrow);
//print("1일후 일시 : \(tomorrowStr)")
let oneHourLater = now.addingTimeInterval((60*60))
print("1시간 후 일시 : \(formatter.string(from: oneHourLater))")


// 날짜 비교
var result = now.compare(yesterday)
if result == ComparisonResult.orderedDescending {
    print("날짜 비교 결과 now가 더 나중입니다.")
}

//var hour = Calendar.current.component(Calendar.Component.hour, from: now)
var hour = Calendar.current.component(Calendar.Component.hour, from: now)
var minute = Calendar.current.component(Calendar.Component.minute, from: now)
print("현재 시간 : \(hour)시 \(minute)분")
