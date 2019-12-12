import Foundation
import UIKit


// PASSING CLOSURES AS ARGUMENTS
// Filter
let numbers = [4, 8, 15, 16, 23, 42]
var numbersLessThan20: [Int] = []

for number in numbers {
    if number < 20 {
        numbersLessThan20.append(number)
    }
}
print(numbersLessThan20)
