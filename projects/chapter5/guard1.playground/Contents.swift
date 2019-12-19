var ages = [20, 23, 21, 17, 25]

for item in ages {
    guard item > 19 else {
        break
    }
    print("성인 나이 : \(item)")
}

func checkBlood(type : String) -> String? {
    if type == "A" || type == "O" {
        return "OK"
    }
    
    return nil
}

func checkBloodTest(myblood:String) {
    guard let result = checkBlood(type:myblood) else {
        print("혈액 검사 결과는 nil입니다.")
        return
    }
    
    print("result 결과 : \(result)")
}

checkBloodTest(myblood:"O")
checkBloodTest(myblood:"B")
