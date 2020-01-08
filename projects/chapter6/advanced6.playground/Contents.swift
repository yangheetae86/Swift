//let show = { () -> () in
//    print("show 함수 호출됨.")
//}
//
//show()
//
//let show2 = { () -> Void in
//    print("show2 함수 호출됨.")
//}
//
//show2()
//
//({ () -> Void in
//    print("즉시실행함수 호출됨.")
//})()
//
//let show3: Void = ({ () -> Void in
//    print("즉시실행함수 호출됨.")
//})()
//
//print("show3의 값 : \(show3)")


func getCalc(index:Int) -> ((Int, Int) -> Int)? {
    if index == 1 {
        return { (a:Int, b:Int) -> Int in
            return a + b
        }
    } else {
        return nil
    }
}

let add = getCalc(index:1)!
var result = add(20, 20)
print("반환받은 더하기 함수 실행 결과 : \(result)")
