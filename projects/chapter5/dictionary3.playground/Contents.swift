var phonebook : [String:[String]] = [:]

var family : [String] = ["엄마","아빠","오빠"]
phonebook["가족"] = family

var friends : [String] = ["소녀시대","걸스데이","티아라"]
phonebook["친구"] = friends

print("전화번호부의 그룹 개수 : \(phonebook.count)")

for (group, names) in phonebook {
    print("전화번호부 그룹 이름 : \(group)")
    print("\(group) 그룹의 이름들 : \(names)")
}


for (index, elem) in phonebook.enumerated() {
    print("전화번호부 그룹 인덱스 : \(index)")
    print("각 그룹 : \(elem)")
}

let keys = [String](phonebook.keys)
let values = [[String]](phonebook.values)

print("전화번호부 키 배열 : \(keys)")
print("전화번호부 값 배열 : \(values)")


for group in phonebook.keys.sorted().reversed() {
    print("전화번호부 그룹 이름 : \(group)")
}
