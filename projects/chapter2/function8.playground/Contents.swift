let value1 = (10, "안녕!", Float(2.4), true)
print("value1 투플의 값 -> \(value1)")

var item1 = value1.0
print("value1 투플의 첫 번째 원소 -> \(item1)")

let value2 = (x:10, y:20)
var item2 = value2.x
print("value2 투플의 x 원소 -> \(item2)")

var value3 : (Int, Int) = (10, 20)
value3.0 = 30
print("value3 투플의 첫번째 원소 -> \(value3.0)")
