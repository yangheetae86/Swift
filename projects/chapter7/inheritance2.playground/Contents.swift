class Person {
    var name : String
    var age : Int

    init(name:String, age:Int) {
        self.name = name
        self.age = age
    }
    
    func toString() -> String {
        return "{\(name), \(age)}"
    }
}

class Baby : Person {
    var mobile : String
    
    init(name:String, age:Int, mobile:String) {
        self.mobile = mobile
        super.init(name:name, age:age)
        
        print(toString())
    }
    
    convenience init(name:String) {
        self.init(name:name, age:0, mobile:"")
    }
    
}

var baby1 = Baby(name:"걸스데이", age:22, mobile:"010-1000-1000")
print("baby1 정보 -> \(baby1.toString())")

var baby2 = Baby(name:"티아라")
print("baby2 정보 -> \(baby2.toString())")

var baby3 = Baby(name: "ee")
print("baby2 정보 -> \(baby3.toString())")
