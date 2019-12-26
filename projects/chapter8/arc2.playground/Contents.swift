class Person {
    var name : String!
    var age : Int!
    var team : Team!
    
    init(name:String, age:Int) {
        self.name = name
        self.age = age
        print("\(name)이 만들어졌습니다.")
    }
    
    deinit {
        print("\(name)가 메모리에서 해제되었습니다.")
    }
}

class Team {
    var person : Person!
    
    init(person:Person) {
        self.person = person
        print("Team이 만들어졌습니다.")
    }
    
    deinit {
        print("Team 객체 해제됨.")
    }
}

var person1 : Person! = Person(name:"소녀시대", age:22)
var team1 : Team! = Team(person:person1)
person1.team = team1


person1.team = nil
team1.person = nil

person1 = nil
team1 = nil
