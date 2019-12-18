class Person {
    var name:String?
    
    init() {
        
    }
    
    init(name:String) {
        self.name = name
    }
    
    func walk(speed:Int) {
        print("\(name)이(가) \(speed)km 속도로 걸어갑니다.")
    }
    
    func run(speed:Int) {
        print("\(name)이(가) \(speed)km 속도로 뛰어갑니다")
    }
}

var person01 = Person(name:"철수")
person01.walk(speed:10)

var person02 = Person(name:"영희")
person02.walk(speed:20)

var person03 = Person(name:"민희")
person03.walk(speed:24)

var person04 = person03
person04.walk(speed:30)

person03.name = "명수"
person04.walk(speed:30)

func changePerson(person:Person) {
    person.name = "진경"
}

changePerson(person:person03)
person04.walk(speed:40)

if person01 === person02 {
    print("person01과 person02는 같습니다.")
} else {
    print("person01과 person02는 다릅니다.")
}

if person03 === person04 {
    print("person03과 person04는 같습니다.")
} else {
    print("person03과 person04는 다릅니다.")
}







