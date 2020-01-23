class Person {
    var name : String!
}

protocol Runnable {
    func run()
}

extension Person : Runnable {
    func run() {
        print("사람 \(name)이(가) 뛰어갑니다.")
    }
}

var person1 = Person()
person1.name = "김준수"
person1.run()

