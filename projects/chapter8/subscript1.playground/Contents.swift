class Person {
    var name : String!
    
    subscript(str : String) -> Int {
        get {
            print("사람 이름 : \(name)")
            return str.count
        }
    }
}

var person1 : Person = Person()
//person1.name = "dd"
var count = person1["scscscsc"]
print("이름 문자열의 길이 : \(count)")
//var count = person1["ㅇㅍㅇㅍㅇㅍ김준수"]
//print("이름 문자열의 길이 : \(count)")

