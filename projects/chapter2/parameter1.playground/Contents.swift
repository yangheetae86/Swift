func add1(a:Int) {
    print("add1 호출됨 : \(a)")
}

add1(a:10)

func add2(a:Int, b:Int) {
    print("add2 호출됨 : \(a), \(b)")
}

add2(a:10, b:20)

func add3(first a:Int, second b:Int) {
    print("add3 호출됨 : \(a), \(b)")
}

add3(first:10, second:20)

func add4(_ a:Int, _ b:Int) {
    print("add4 호출됨 : \(a), \(b)")
}

add4(10, 20)



