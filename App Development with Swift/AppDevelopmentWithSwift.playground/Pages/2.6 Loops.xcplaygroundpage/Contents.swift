
for index in 1...5 {
    print("this is number \(index)")
}

for _ in 1...3 {
    print("hi")
}

let names = ["Josh", "Casy", "wily"]
for name in names {
    print("hi \(name)")
}

for letter in "ABCD" {
    print("the letter is \(letter)")
}

for (index, letter) in "ABCD".enumerated() {
    print("\(index): \(letter)")
}

let vehicles = ["unicycle": 1, "bicycle": 2, "tricycle": 3, "quad bike": 4]
for (vehiclesName, wheelCount) in vehicles {
    print("A \(vehiclesName) has \(wheelCount) wheels")
}

//WHILE LOOPS

var num = 34
var stillAlive = true
while stillAlive {
    num -= 1
    if num == 0 {
        stillAlive = false
        }
}

for counter in -3...3 {
    print(counter)
    if counter == 0 {
        break
    }
}
