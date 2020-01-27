// string length
var message : String = "안녕하세요!"
var length = message.count
print("길이 : \(length)")

// check the string is empty
var name : String =  ""
if name.isEmpty {
    print("이름이 없습니다.")
}

// get a character using index
var first = message[message.startIndex]
var last = message[message.index(before: message.endIndex)]
//var end = message[message.endIndex]
 
print("첫번째 : \(first), 마지막 : \(last)")

// prefix and suffix
if message.hasPrefix("안녕") {
    print("안녕 으로 시작합니다.")
}

if message.hasSuffix("!") {
    print("! 로 끝납니다.")
}

// substring
let range = message.index(message.startIndex, offsetBy: 1) ...
            message.index(message.endIndex, offsetBy:-2)
let messagePart = message[range]
print("인덱스 1~(끝-2) : \(messagePart)")

let range2 = message.index(message.startIndex, offsetBy:2) ..<
             message.endIndex
let messagePart2 = message[range2]
print("인덱스 2~끝 : \(messagePart2)")

// remove part of the string

message.removeSubrange(range2)
print("인덱스 2~끝 삭제 후 : \(message)")

// upper, lower
var id = "TestUser01"
print("LowerCase: \(id.lowercased())")
print("UpperCase: \(id.uppercased())")
