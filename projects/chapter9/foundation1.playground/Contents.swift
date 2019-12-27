import Foundation

class Person : NSObject {
    var name : String
    var age : Int
    
    init(name: String, age : Int) {
        self.name = name
        self.age = age
    }
    
    override func isEqual(_ object: Any?) -> Bool {
        if let other = object as? Person {
            return self.name == other.name && self.age == other.age
        }
        
        return false
    }
}

let person1 = Person(name:"소녀시대", age:22)
let person2 = Person(name:"소녀시대", age:22)
let person3 = Person(name:"걸스데이", age:20)

if person1.isEqual(person2) {
    print("person1과 person2는 같습니다.")
}

if person1 !== person3 {
    print("person1과 person3은 다릅니다.")
}
