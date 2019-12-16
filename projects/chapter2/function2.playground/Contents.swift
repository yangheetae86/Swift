func sum(start:Int, end:Int) -> Int {
    var count = 0
    for i in start ..< end {
        count = count + i
    }
    return count
}

var result = sum(start:1, end:11)
print("sum(1, 11) -> \(result)")

result = sum(start:1, end:101)
print("sum(1, 101) -> \(result)")
