import Foundation
import UIKit

var hoby: [String] = ["sleep", "fotball"]
var hoby2 = ["sleep", "fotball"]

var hoby3: [Int8] = [1, 2, 3, 4, 5, 6, -1]

let numbers = [4, 5, 6]
if numbers.contains(5) {
    print("there is a 5")
}

//ARRAT TYPES

//var myArray: [Int] = []
//var myArray: Array<Int> = []
//var myArray = [Int]()

var aaa: [Int] = []
print(aaa)

//WORKING WITH ARRAYS

var myArray = [Int](repeating: 0, count: 100)
let count = myArray.count
if myArray.isEmpty{}

var names = ["amy"]
names.append("joe")
names += ["kei","jane"]
print(names)
names.insert("Bob", at: 0)
print(names)
names.remove(at: 2)
print(names)
names.removeLast()
print(names)
names.removeAll()
print(names)

let array1 = [1,2,3]
let array2 = [4,5,6]
let containerArray = [array1, array2]
let firstN = containerArray[0]
let firstE = containerArray[1][1]

var myDictionary = [String: Int]()

// ADD/REMOVE/MODIFY A DICTIONARY
var scores = ["Richard": 100, "Luuu": 200, "Aie": 300]
scores["Richard"] = nil
print(scores)

if let myScore = scores["Luuu"] {
    print(myScore)
}
