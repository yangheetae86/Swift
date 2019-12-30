var phonebook : [String:[String]] = [:]

var family : [String] = ["나","아빠","엄마","형"]
phonebook["패밀리"] = family

var friends : [String] = ["도날드", "박정희", "놈현"]
phonebook["대통령"] = friends

//print("전화번호부의 그룹 개수 : \(phonebook.count)")
//
//for (g,n) in phonebook {
//    print("전화번호부 그룹 이름 : \(g)")
//    print("\(g) 그룹의 이름들 : \(n)")
//}


for (i, e) in phonebook.enumerated() {
    print("전화번호부 그룹 인덱스 : \(i)")
    print("각 그룹 : \(e)")
}
//
//let keys = [String](phonebook.keys)
//let values = [[String]](phonebook.values)
//
//print("전화번호부 키 배열 : \(keys)")
//print("전화번호부 값 배열 : \(values)")
//
//
//for group in phonebook.keys.sorted().reversed() {
//    print("전화번호부 그룹 이름 : \(group)")
//}
