import Foundation

//struct Person {
//    var name: String
//}
//
//let firstPerson = Person(name: "Jasmine")
//print(firstPerson.name)
//
//struct People {
//    var name: String
//    func sayHello() {
//        print("hello, \(name)")
//    }
//}
//let people = People(name: "joe")
//people.sayHello()
//
////instances
//struct Car {
//    var make: String
//    var model: String
//    var year: Int
//    var topSpeed: Int
//
//    func startEngine() {
//        print("the\(make) \(model) \(year) engine has started")
//    }
//    func drive() {
//        print("the\(make) \(model) \(year)is moving")
//    }
//    func park() {
//        print("the\(make) \(model) \(year) is parked")
//    }
//}
//
//let firstCar = Car(make: "honda", model: "aa", year: 2010, topSpeed: 120)
//let secondCar = Car(make: "ford", model: "bb", year: 2013, topSpeed: 125)
//
//firstCar.startEngine()
//firstCar.drive()
//
////initializers
//var string = String()
//var integer = Int()
//var bool = Bool.init() //== var bool = Bool()
//
////var string = String.init()
//
//struct Odometer {
//    var count: Int = 0
//}
//
//let odometer = Odometer()
//print(odometer.count)
//
//let odometer2 = Odometer(count: 27000)
//print(odometer2.count)
//
//struct yyk {
//    var name: String
//
//    func sayFuck() {
//        print("fuck")
//    }
//}
//let Yyk = yyk(name: "너")
//Yyk.sayFuck()
//
////Custom initializers
//struct Scores {
//    var science: Double
//
//    init(science: Double) {
//        self.science = science
//    }
//    init(math: Double) {
//        science = (math - 32) / 1.8
//    }
//    init(language: Double) {
//        science = language - 22.1
//    }
//}
//
//let s1 = Scores(language: 10)
//let s2 = Scores(math: 20)
//let s3 = Scores(science: 30)
//
//print(s1.science)
//print(s1.self)
//print(s2.science)
//print(s2.self)

//MUSTATING METHODS
//struct Some {
//    var count: Int = 0
//    mutating func increment() {
//        count += 1
//    }
//    mutating func increment(by amount: Int) {
//        count += amount
//    }
//    mutating func reset() {
//        count = 0
//    }
//}
//
//var some = Some()
//some.increment()
//some.increment(by: 15)
//some.reset()
//
//// PROPERTY OBSERVERS
struct StepCounter {
    var totalSteps: Int = 0 {
        willSet {
            print("About to set totalSteps to \(newValue)")
        }
        didSet {
            if totalSteps > oldValue {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}

var stepCounter = StepCounter()
stepCounter.totalSteps = 40
stepCounter.totalSteps = 100
stepCounter.totalSteps = -1

//willSet에 전달되는 파라미터는 변경될 값이고 파라미터 이름을 지정하지 않으면 newValue라는 이름으로 자동 지정된다.
//didSet에 전달되는 파라미터는 변경되기 전의 값이고 파라미터 이름을 지정하지 않으면 oldValue라는 이름으로 자동 지정된다.
struct Job {
    var income: Int = 0 {
        willSet(newIncome) {
            print("이번 달 월급은 \(newIncome)")
        }
        didSet(oldIncome) {
            if income > oldIncome {
                print("월급이 \(income - oldIncome)원 증가하셨네요.")
            } else {
                print("월급이 삭감되었군요")
            }
        }
    }
}

var job = Job(income: 1000000)
job.income = 2000000
job.income = 1500000
job.income = 900000

class Account {
    var credit: Int = 0 {
        willSet {
            print("잔액이 \(credit)원에서 \(newValue)원으로 변경될 예정입니다.")
        }
        
        didSet {
            print("잔액이 \(oldValue)원에서 \(credit)원으로 변경되었습니다.")
        }
    }
}

let myAccount: Account = Account()

//잔액이 0원에서 1000원으로 변경될 예정입니다.
myAccount.credit = 1000
//잔액이 0원에서 1000원으로 변경되었습니다
