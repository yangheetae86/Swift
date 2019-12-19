class Person {
    var name : String?
    var age : Int = 0
    
    init(name:String, age:Int) {
        self.name = name
        self.age = age
    }
}

var count = 0
let names = ["소녀시대","걸스데이","여자친구","티아라","애프터스쿨"]
let ages = Array<Int>([20,23,22,20,21])

func createPerson() -> Person? {
    var person : Person?
    if count < names.count {
        person = Person(name:names[count], age:ages[count])
    } else {
        print("인덱스 \(count)에 사람 이름이 없습니다.")
    }
    
    count += 1
    
    return person
}

var persons : Array<Person> = Array<Person>()

for i in 0..<5 {
    print("인덱스 \(i)의 사람이름 : \(names[i])")
    let person = createPerson()!
    persons.append(person)
    print("만들어진 사람 객체 : \(person.name!)")
}

var names2 = ["소녀시대","걸스데이","여자친구","티아라","애프터스쿨"]
let ages2 = Array<Int>([20,23,22,20,21])

names2.append("에이핑크")
names2.remove(at:0)
names2.removeLast()
print("names2의 크기 : \(names2.count)")

for i in 0..<names2.count {
    print("인덱스 \(i)의 사람이름 : \(names2[i])")
    let person = Person(name:names2[i], age:ages2[i])
    persons.append(person)
    print("만들어진 사람 객체 : \(person.name!)")
}

let target = "티아라"
if names2.contains(target) {
    let index = names2.index(of:target)
    print("\(target)의 인덱스 값 : \(index!)")
}









