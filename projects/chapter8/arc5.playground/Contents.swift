class Person {
    var name : String!
    var age : Int!
    
    init(name:String, age:Int) {
        self.name = name
        self.age = age
        print("\(name)이 만들어졌습니다.")
    }
    
    deinit {
        print("\(name)가 메모리에서 해제되었습니다.")
    }
}

var persons = [Person]()
var person1 : Person! = Person(name:"소녀시대", age:22)
persons.append(person1)
print("person1을 배열에 추가했습니다.")

persons.remove(at:0)
person1 = nil



