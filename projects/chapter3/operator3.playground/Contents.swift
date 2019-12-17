func sum(start:Int, end:Int) -> Int {
    var total = 0
    for i in start ..< end {
        total += i
    }
    
    return total
}

var result = sum(start:1, end:11)
print("sum(1, end:11)의 결과 -> \(result)")
