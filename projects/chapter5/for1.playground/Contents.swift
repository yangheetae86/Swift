for i in 0...5 {
    print("for ~ in 반복문 #\(i)")
}

var numbers = [1,2,3,4,5]
for value in numbers {
    print("for ~ in 배열 원소 : \(value)")
}

var orders = [1:"첫번째",2:"두번째",3:"세번째",4:"네번째",5:"다섯번째"]
for (key,value) in orders {
    print("for ~ in 딕셔너리 원소 : \(key), \(value)")
}

var message = "안녕하세요!"
for ch in message {
    print("for ~ in 문자열 : \(ch)")
}
