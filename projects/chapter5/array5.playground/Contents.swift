func checkName(names:[String]) {
    if names.first == "소녀시대" {
        print("Error.")
    } else {
        print("OK.")
    }
}

let names = ["소녀시대","걸스데이","티아라"]
checkName(names:names)


var names2:[String] = ["소녀시대","걸스데이","티아라"]
var names3 = names2

names2.append("에이핑크")
print(names2)
print(names3)

if names2 != names3 {
    print("두 개의 배열이 다릅니다.")
}
