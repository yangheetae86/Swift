//let value1 = (10, "안녕!", Float(2.4), true)
//print("value1 투플의 값 -> \(value1)")
//
//var item1 = value1.0
//print("value1 투플의 첫 번째 원소 -> \(item1)")
//
//let value2 = (x:10, y:20)
//var item2 = value2.x
//print("value2 투플의 x 원소 -> \(item2)")
//
//var value3 : (Int, Int) = (10, 20)
//value3.0 = 30
//print("value3 투플의 첫번째 원소 -> \(value3.0)")
//
//func getLocation() -> (x: Int, y: Int) {
//    return (10, 10)
//}
//var location = getLocation()
//print("내위치: \(location.x), \(location.y)")
//
//func getLocation2() -> (Int, Int) {
//    return (20, 20)
//}
//print("내위치: \(location)")

func getPerson(para: String) -> (name: String, age: Int?)? {
    var value: Int?
    value = Int(para)
    if value == nil {
        print("전달 받은 값은 숫자가 아닙니다")
        return nil
    }else{
        print("전달 받은 숫자: \(value!)")
        return (name: "양", age: value)
    }
}

var result = getPerson(para: "u")
print("getPerson함수효과: \(result)")

func getCount(persons:(name:String, age:Int)...) -> Int {
    var count = 0
    for (_, _) in persons {
        count += -1
    }
    return count
}
var result2 = getCount(persons: ("김", 30), ("장", 22), ("장", 22), ("장", 22), ("장", 22))
print("getCount 함수 호출 결과 \(result2)")
