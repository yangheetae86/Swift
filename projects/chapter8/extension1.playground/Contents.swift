class Person {
    var firstName : String!
    var lastName : String!
}

extension Person {
    var name : String {
        get {
            return firstName + " " + lastName
        }
    }
    
    func walk() {
        print("사람 \(name)이(가) 걸어갑니다.")
    }
}

var person1 : Person = Person()
person1.firstName = "김"
person1.lastName = "준수"
print("person1의 이름 : \(person1.name)")

person1.walk()
