func doCalc(first a:Int, second b:Int, _ calc: (Int, Int) -> Int) -> Int {
    let output = calc(a, b)
    return output
}

func add(a:Int, b:Int) -> Int {
    return a + b
}

var result = doCalc(first: 110, second: 10, add(a:b:))
//print("add 함수를 파라미터로 전달하여 실행한 결과 : \(result)")

var result2 = doCalc(first:10, second:10, {(a:Int, b:Int) -> Int in return a + b})
//print("클로저 표현식을 파라미터로 전달하여 실행한 결과 : \(result2)")

var result3 = doCalc(first:10, second:10, {(a, b) -> Int in return a + b})
//print("클로저 표현식의 파라미터 자료형을 생략한 경우 : \(result3)")

var result4 = doCalc(first:10, second:10, {(a, b) -> Int in a + b})
//print("클로저 표현식의 구현 코드가 반환용 한 줄 코드인 경우 : \(result4)")

var result5 = doCalc(first: 10, second: 10, {$0 + $1})
//print("클로저 표현식의 파라미터를 선언없이 직접 참조한 경우 : \(result5)")

var result6 = doCalc(first:10, second:10, {$0 + $1})
//print("클로저 표현식을 파라미터 외부에 넣은 경우 : \(result6)")

var result7 = doCalc(first: 10, second: 10) {$0 + $1}
