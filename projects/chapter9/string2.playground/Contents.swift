import Foundation

// count based on encoding
var message = "안녕하세요!"
var length = message.lengthOfBytes(using: String.Encoding.utf8)
print("UTF8 인코딩일 경우 바이트 길이 : \(length)")

// split
let fruits = "apple,peach,kiwi"
let fruitsArray = fruits.components(separatedBy: ",")
print("과일 개수 : \(fruitsArray.count)")

var index = 0
for fruit in fruitsArray {
    index += 1
    print("#\(index) : \(fruit)")
}


// index of

var index1 = message.index(of:"하")!
print("하 글자의 인덱스 : \(index1)")


var range1 = message.range(of:"하세요")!
print("하세요 글자의 인덱스 : \(range1.lowerBound), \(range1.upperBound)")


// trim
var password = "T123456   "
print("trim 전 : [\(password)]")

var trimmed = password.trimmingCharacters(in: CharacterSet.whitespaces)
print("trim 후 : [\(trimmed)]")
