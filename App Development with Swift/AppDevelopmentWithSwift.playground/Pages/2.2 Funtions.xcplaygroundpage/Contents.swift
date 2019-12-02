//makeBreakfast(food: ["eggs", "orange juice"])
//(food: ["cereal", "toast"])

//parameters
func triple(value : Int) {
    let result = value*3
    print("If you multiply \(value) by 3, you'll get \(result)")
}
triple(value: 20)

//func multiply(fitstNumber: Int, secondNumber: Int) {
//    let result2 = fitstNumber*secondNumber
//    print("result is \(result2)")
//}
//multiply(fitstNumber: 3, secondNumber: 5)

//argument labels
func sayHi(firstName: String) {
    print("Hi, \(firstName)!")
}
sayHi(firstName: "Aihnoa")

func saySorry(to person: String, and another: String) {
    print("Hello \(person) , \(another)")
}
saySorry(to: "dog", and: "cat")

func sayGo(_ you: String, _ me: String) {
    print("Hi \(you), \(me)")
}
sayGo("aa", "bb")

func display(teamName: String, score: Int = 0) {
    print("\(teamName): \(score)")
}
display(teamName: "Wombats", score: 100)
display(teamName: "Wombats")

func multiply(firstNumber: Int, secondNumber: Int) -> Int {
    return firstNumber*secondNumber
}
let myResult = multiply(firstNumber: 10, secondNumber: 5)
print("10*5 is \(myResult)")
print("10*5 is \(multiply(firstNumber: 10, secondNumber: 5))")
