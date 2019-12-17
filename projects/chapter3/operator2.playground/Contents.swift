var count = 10
var result = (count > 10) ? true : false
print("result 변수의 값 -> \(result)")


var count2 = 20
var result2 : String? = (count2 > 20) ? "success" : nil

if result2 == nil {
    print("result2 변수의 값이 nil 입니다.")
} else {
    print("result2 변수의 값 -> \(result2!)")
}


if count is Int {
    print("count 변수의 자료형은 Int 입니다.")
} else {
    print("count 변수의 자료형은 Int가 아닙니다.")
}

var result3 = (count is Int) ? "count 변수의 자료형은 Int 입니다." : "count 변수의 자료형은 Int가 아닙니다."








