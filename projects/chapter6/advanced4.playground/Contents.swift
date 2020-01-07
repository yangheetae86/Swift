//func getPower(food:Int) -> Int {
//    var stored = 100
//    func calcPower(foodAmount:Int) -> Int {
//        stored += foodAmount*10
//        return stored
//    }
//
//    let power = calcPower(foodAmount: food)
//
//    return power
//}
//
//var result = getPower(food: 10)
//print("getPower 함수 실행 결과 : \(result)")
//
//result = getPower(food:20)
//print("getPower 함수 실행 결과 : \(result)")

func getPowerFunc() -> ((Int) -> Int) {
    var stored = 100
    func calcPower(foodAmount:Int) -> Int {
        stored += (foodAmount * 10)
        return stored
    }

    return calcPower
}

var powerFunc = getPowerFunc()
var result2 = powerFunc(10)
print("반환받은 powerFunc 함수 실행 결과 : \(result2)")

result2 = powerFunc(20)
print("반환받은 powerFunc 함수 실행 결과 : \(result2)")

