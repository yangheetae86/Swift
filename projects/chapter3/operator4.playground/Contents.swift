//func compare(value:Int) -> Int {
//    if value < 0 {
//        return -1
//    } else if value == 0 {
//        return 0
//    } else {
//        return 1
//    }
//}
//
//var result = compare(value:10)
//print("compare(value:10) 의 결과 -> \(result)")


func compare2(value:Int) -> Int {
    if value < 0 || value == 0 {
        return -1
    } else {
        return 1
    }
}

var result = compare2(value:10)
print("compare2(value:10) 의 결과 -> \(result)")


//func compare3(value:Int) -> Int {
//    if !(value < 0 || value == 0) {
//        return -1
//    } else {
//        return 1
//    }
//}
//
//result = compare3(value:10)
//print("compare3(value:10) 의 결과 -> \(result)")
