// type property & type method

class Person {
    static var total : Int = 0
    
    class var halfTotal : Int {
        get {
            return total / 2
        }
        set(newVal) {
            total = newVal * 2
        }
    }
    
    class func getTotal() -> Int {
        return total
    }
    
    var name : String?
    
    init(name:String) {
        self.name = name
        Person.total += 1
    }
    
}
var person01 = Person(name:"철수")
print("만들어진 사람 객체 수 -> \(Person.total)")

Person.halfTotal = 10
print("만들어진 사람 객체 수 -> \(Person.total)")

var total = Person.getTotal()
print("만들어진 사람 객체 수 -> \(total)")
