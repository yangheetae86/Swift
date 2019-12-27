import Foundation

func show() {
    print("show 호출됨.")
}

let method = Selector(("show"))

func show2(data:String) {
    print("show2 호출됨 : \(data)")
}

let method2 = Selector(("show2:"))

func show3(data:String, name:String) {
    print("show3 호출됨 : \(data), \(name)")
}

let method3 = Selector(("show3:name:"))


class Person : NSObject {
    var name : String
    var age : Int
    
    @objc init(name: String, age : Int) {
        self.name = name
        self.age = age
    }
    
    @objc func greeting(message:String) {
        print("\(name)에게 인사 : \(message)")
    }
}


let selector1 = #selector(Person.greeting(message:))

let person1 = Person(name:"소녀시대", age:22)
person1.responds(to:selector1)
person1.responds(to:#selector(Person.greeting(message:)))

person1.responds(to:#selector(Person.init(name:age:)))

