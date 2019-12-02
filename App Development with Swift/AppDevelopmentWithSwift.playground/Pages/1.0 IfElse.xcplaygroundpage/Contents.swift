import UIKit

var aaa = 2
if aaa == 1 {
    print("aaa")
} else if aaa == 2 {
    print("ggg")
} else {
    print("vvv")
}

let a = "fgdfdfvdfvdfvdffdv'dddd'"
print(a)

var q1 = ""
if q1.isEmpty{
    print("empty")
}

let name = "Yang heetae"
if name.lowercased() == "Yang heetaE".lowercased(){
    print("the tow names are equal")
}

let greeting = " hi, my name is yang"
if greeting.contains("my name is") {
    print("making an intro")
}

let ali : Character = "e"
switch ali {
case "a","b","c","d","e":
    print("\(ali) is a vowel")
default:
    print("\(ali) is not a vowel")
}

let cow = "🤪"
let creat = "アホ"
