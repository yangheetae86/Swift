class Person {
    var name : String!
    
    subscript(str : String) -> Int {
        get {
            print("사람 이름 : \(name)")
            return str.characters.count
        }
    }
}

var person1 : Person = Person()
person1.name = "김준수"
var count = person1["김준수"]
print("이름 문자열의 길이 : \(count)")
