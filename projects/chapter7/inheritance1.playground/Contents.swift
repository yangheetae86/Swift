class Person {
    var name : String!
    var age : Int!

    init(name:String, age:Int) {
        self.name = name
        self.age = age
    }
    
    func toString() -> String {
        return "Person {\(name), \(age)}"
    }
}

class Baby : Person {
    
}

var person1 = Person(name:"소녀시대", age:20)
print("person1 정보 -> \(person1.toString())")

var baby1 = Baby(name:"걸스데이", age:22)
print("baby1 정보 -> \(baby1.toString())")


class Rectangle {
    var width : Int
    var height : Int
    
    init(width:Int, height:Int) {
        self.width = width
        self.height = height
        
        show()
    }
    
    init() {
        self.width = 0
        self.height = 0
    }
    
    convenience init(height:Int) {
        self.init()
        self.height = height
    }
    
    init?(width:Int, height:Int, type:Int) {
        self.width = width
        self.height = height
        
        if type < 1 {
            return nil
        }
    }
    
    func show() {
        print("Rectangle {\(width), \(height)}")
    }
}

var rect1 = Rectangle(width:100, height:100)
var rect2 = Rectangle(height:200)
rect2.show()

var rect3 = Rectangle(width:300, height:300, type:-1)
print("rect3 정보 -> \(rect3)")
 