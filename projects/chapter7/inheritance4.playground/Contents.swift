class Person {
    var name : String
    var age : Int

    init(name:String, age:Int) {
        self.name = name
        self.age = age
    }
}

//class Baby : Person {
//
//    override var name : String {
//        didSet {
//            print("name -> \(name)")
//        }
//    }
//
//    override var age : Int {
//        get {
//            return 10
//        }
//        set {
//
//        }
//    }
//
//}

//var baby1 = Baby(name:"걸스데이", age:22)
//print("baby1의 age -> \(baby1.age)")
//
//baby1.name = "티아라"


class Rectangle {
    final var width : Int!
    final var height: Int!

    final func getWidth() -> Int {
        return width
    }
}

class Square : Rectangle {
    override func getWidth() -> Int {
    
    }
}
