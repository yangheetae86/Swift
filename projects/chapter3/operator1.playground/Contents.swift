let userId = "test1"
let userPassword = "123456"

func login(id:String, password:String) -> Bool {
    if (id == userId) && (password == userPassword) {
        return true
    }
    return false
}

var inputId = "test1"
var inputPassword = "123456"
var result = login(id:inputId, password:inputPassword)
print("아이디 확인 결과 -> \(result)")
