var girls = [1:"소녀시대",2:"걸스데이",3:"티아라"]
//var girls: [Int:String] = [1:"소녀시대",2:"걸스데이",3:"티아라"]
print("girls 딕셔너리의 원소 개수 : \(girls.count)")

if (girls[1] != nil) {
    print("girls 딕셔너리의 키 1의 값 : \(girls[1]!)")
}

girls[1] = "여자친구"
girls[7] = "애프터스쿨"

for (k, v) in girls {
    print("걸그룹 키와 값 -> \(k) : \(v)")
}

for (k, v) in girls.sorted(by:{$0.0 < $1.0}) {
    print("걸그룹 키와 값 -> \(k) : \(v)")
}
