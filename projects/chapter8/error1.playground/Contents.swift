protocol Calculator {
    func add(first a:Int, second b:Int) throws -> Int
    func subtract(first a:Int, second b:Int) throws -> Int
    func multiply(first a:Int, second b:Int) throws -> Int
    func divide(first a:Int, second b:Int) throws -> Int
}

enum CalculatorError : Error {
    case Unimplemented
    case Incorrect(reason:String)
}

class MyCalculator : Calculator {
    
    func add(first a:Int, second b:Int) throws -> Int {
        return a + b
    }
    
    func subtract(first a:Int, second b:Int) throws -> Int {
        throw CalculatorError.Unimplemented
    }
    
    func multiply(first a:Int, second b:Int) throws -> Int {
        throw CalculatorError.Unimplemented
    }
    
    func divide(first a:Int, second b:Int) throws -> Int {
        if b == 0 {
            throw CalculatorError.Incorrect(reason: "두번째 파라미터 값이 0입니다.")
        } else {
            return a / b
        }
    }
}

var calc1 = MyCalculator()

do {
    let result1 = try calc1.add(first:10, second:10)
    print("더하기 결과 : \(result1)")
    
    let result2 = try calc1.subtract(first: 20, second: 10)
    print("빼기 결과 : \(result2)")

} catch CalculatorError.Unimplemented {
    print("구현되지 않은 기능입니다.")
} catch CalculatorError.Incorrect(let reason) {
    print("Incorrect 에러 : \(reason)")
}


do {
    let result3 = try calc1.divide(first: 40, second: 0)
    print("나누기 결과 : \(result3)")
    
} catch CalculatorError.Unimplemented {
    print("구현되지 않은 기능입니다.")
} catch CalculatorError.Incorrect(let reason) {
    print("Incorrect 에러 : \(reason)")
}
