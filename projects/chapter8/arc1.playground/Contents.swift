class Person {
    var name : String!
    var age : Int!
    
    init(name:String, age:Int) {
        self.name = name
        self.age = age
    }
    
    deinit {
        print("\(name)가 메모리에서 해제되었습니다.")
    }
}

var person1 : Person! = Person(name:"소녀시대",age:20)
person1 = nil

var person2 : Person! = Person(name:"걸스데이",age:22)
var person3 = person2

person2 = nil

func createPerson(name:String, age:Int) {
    let person4 : Person! = Person(name:name,age:age)
    print("person4 변수 만들어짐. \(person4.name)")
}

createPerson(name:"티아라",age:24)

class Team {
    var person : Person!
    
    init() {
        person = Person(name:"애프터스쿨", age:23)
    }
    
    func show() {
        print("Team 안의 Person 객체 : \(person.name)")
    }
}

var team1 : Team! = Team()
team1.show()
team1 = nil


