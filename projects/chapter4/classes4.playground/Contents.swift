class Person {
    var name : String?
    var height : Float?
    var weight : Float?
    
    init(name:String, height:Float, weight:Float) {
        self.name = name
        self.height = height
        self.weight = weight
    }

    var bmi : Float = 0.0 {
         willSet {
            print("bmi willSet 호출됨 -> \(newValue)")
        }
        didSet {
            print("bmi didSet 호출됨 -> \(oldValue)")
        }
    }
}

var person01 = Person(name:"철수", height:1.7, weight:49.5)
print("BMI값 -> \(person01.bmi)")
//
person01.bmi = 18
print("BMI값 -> \(person01.bmi)")
//
person01.bmi = 22
print("BMI값 -> \(person01.bmi)")
//    var bmi : Float {
//        get {
//            return weight! / (height! * 2)
//        }
//        set(bmiv) {
//            if bmiv < 20 {
//                height = 1.7
//                weight = 50
//            } else if bmiv >= 20 {
//                height = 1.65
//                weight = 64
//            }
//        }
//    }
