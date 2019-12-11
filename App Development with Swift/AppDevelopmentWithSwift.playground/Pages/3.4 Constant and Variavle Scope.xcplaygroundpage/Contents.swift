import Foundation

var age = 55
func printMyAge() {
    print("My age: \(age)")
}
print(age)
printMyAge()

func printTenNames() {
    let name = "Grey"
    for index in 1...10 {
        print("\(index): \(name)")
    }
    print(index)
    print(name)
}

printTenNames()

//VARIABLE SHADOWING
func printCompleScope() {
    let points = 100
    print(points)
    
    for index in 1...3 {
        let points = 200
        print("Loop \(index): \(points+index)")
    }
    print(points)
}
printCompleScope()

var name: String? = "Brady"
if let name = name {
    print("My name is \(name)")
}

func exclaim(name: String?) {
    if let name = name {
        print("Exclaim was passed: \(name)")
    }
}


