class Person {
    var name : String
    var age : Int
    
    init(name:String, age:Int) {
        self.name = name
        self.age = age
    }
}

class Baby : Person {
    func cry() {
        print("아기가 웁니다.")
    }
}

var person1 = Person(name:"소녀시대", age:20)
var baby1 = Baby(name:"걸스데이", age:22)

//if baby1 is Baby {
//    print("baby1의 자료형은 Baby가 맞습니다.")
//}
//
//if baby1 is Person {
//    print("baby1의 자료형은 Person이 맞습니다.")
//}
//
//var person2 : Person = Baby(name:"티아라", age:22)
//person2.cry()

//let baby2 = person2 as? Baby
//if baby2 != nil {
//    print("person2 변수의 자료형이 Baby로 변환되었습니다.")
//}

//if let baby2 = person2 as? Baby {
//    print("\(baby2.name) 변수의 자료형이 Baby로 변환되었습니다.")
//}

//if let baby3 = person2 as? Baby {
//    print("\(baby3.name)는 Baby 자료형으로 형변환되었습니다.")
//}

//let baby4 = person2 as! Baby
//print("\(baby4.name)는 Baby 자료형으로 형변환되었습니다.")
//
var person3 : Any = Person(name:"애프터스쿨", age:24)
var baby5 : AnyObject = Baby(name:"여자친구", age:23)
let person4 = person3 as? Person
let baby6 = baby5 as? Baby

if person4 != nil {
    print("Any에서 Person으로 형변환되었습니다.")
}

if baby6 != nil {
    print("AnyObject에서 Baby로 형변환되었습니다.")
}

//var array1 = [AnyObject]()
var array1: [AnyObject] = []
array1.append(person1)
array1.append(baby1)
print("array1의 크기 : \(array1.count)")

//var dict1 = [String:Any]()
var dict1: [String:Any] = [:]
dict1["1232"] = person1
dict1["ewwe"] = baby1
dict1["3"] = 10
print("dict1의 크기 : \(dict1.count)")
