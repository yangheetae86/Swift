import Foundation
import UIKit
// Filter
var total = 0
let numbers = [4, 8, 15, 16, 23, 42]
var numbersLessThan20: [Int] = []

for i in numbers {
    if i < 20 {
        numbersLessThan20.append(i)
    }
}
print(numbersLessThan20)


let numbers2 = [4, 8, 15, 16, 23, 42]
var numbersLessThan24: [Int] = []

for i in numbers {
    if i < 24 {
        numbersLessThan24.append(i)
    }
}
print(numbersLessThan24)

for i in numbers {
    total = total + i
}
total = numbers.reduce(0) {$0 + $1}

print(total)
