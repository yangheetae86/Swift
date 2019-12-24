class Person {
    var name : String
    var age : Int

    init(name:String, age:Int) {
        self.name = name
        self.age = age
    }
    
    func walk(duration:Int) -> Int {
        return duration * 10
    }
}

class Baby : Person {
    override func walk(duration:Int) -> Int {
        return duration * 5
    }

    func cry() {
        print("아기가 웁니다.")
    }
}

var person1 = Person(name:"소녀시대", age:20)
print("person1 걸어간 거리 -> \(person1.walk(duration:10))")

var baby1 = Baby(name:"걸스데이", age:22)
print("baby1 걸어간 거리 -> \(baby1.walk(duration:10))")



