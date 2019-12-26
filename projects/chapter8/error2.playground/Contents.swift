struct CustomError : Error {
    var code : Int
    var message : String
}

func checkData() throws {
    throw CustomError(code:400, message:"데이터에서 에러 발생함.")
}

do {
    try checkData()
} catch let error where error is CustomError {
    let errorInfo = error as! CustomError
    print("에러 : \(errorInfo.code), \(errorInfo.message)")
} catch let error {
    print("기타 에러")
}
