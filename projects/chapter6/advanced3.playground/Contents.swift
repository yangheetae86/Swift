func add(first a:Int, second b:Int) -> Int {
    return a + b
}

func subtract(first a:Int, second b:Int) -> Int {
    return a - b
}

func selectCalc(index:Int) -> ((Int, Int) -> Int)! {
    if index == 1 {
        print("add 계산기를 선택했습니다.")
        return add
    } else if index == 2 {
        print("subtract 계산기를 선택했습니다.")
        return subtract
    } else {
        print("알 수 없는 계산기입니다.")
        return nil
    }
}

var addCalc = selectCalc(index: 1)!
var result = addCalc(20, 20)
print("add 함수 실행 결과 : \(result)")

var result2 = selectCalc(index:2)!(100,10)
print("subtract 함수 실행 결과 : \(result2)")

