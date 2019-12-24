class MyCalculator : Calculator {
    func getProductName() -> String {
        return "내 계산기"
    }
    
    func add(first a: Int, second b: Int) -> Int {
        return a + b
    }
}

protocol Product {
    func getProductName() -> String
}

protocol Calculator : Product {
    func add(first a: Int, second b: Int) -> Int
}

var calculator : Calculator = MyCalculator()
print("제품명 : \(calculator.getProductName())")