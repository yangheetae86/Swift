class MyCalculator : Calculator {
    func add(first a: Int, second b: Int) -> Int {
        return a + b
    }
}

protocol Calculator {
    func add(first a: Int, second b: Int) -> Int
}

var calculator : Calculator = MyCalculator()
var result = calculator.add(first:10, second:10)
print("add 결과 -> \(result)")

class FriendCalculator: Calculator {
    func add(first a: Int, second b: Int) -> Int {
        print("FriendCalculator에서 더하기 실행: \(a), \(b)")
        return a + b
    }
}

var calculator2 : Calculator = FriendCalculator()
var result2 = calculator2.add(first:10, second:10)
print("FriendCalculator에서 add 결과 -> \(result2)")
