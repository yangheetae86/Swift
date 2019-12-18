enum Car : Int {
    case Benz = 0
    case BMW
    case Other

    var name : String {
        if self == .Benz {
            return "벤츠"
        } else if self == .BMW {
            return "비.엠.더블유"
        } else {
            return "기타"
        }
    }
    
    func getName() -> String {
        return self.name
    }
}

var car1 = Car.BMW
print("차 이름 : \(car1.name)")

var carName = car1.getName()
print("차 이름 : \(carName)")


enum CarSize {
    case Small
    case Medium
    case Big
    case Other(Int)
}

var size1 = CarSize.Other(10)

let sizeValue = 10

switch size1 {
    case .Small:
        print("소형차 크기입니다.")
    case .Other(sizeValue):
        print("지정되지 않은 크기 중 \(sizeValue) 입니다.")
    default:
        print("알 수 없는 크기입니다.")
}
