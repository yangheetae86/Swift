struct CustomError : Error {
    var code : Int
    var message : String
}

func checkData(data:Int) throws {
    defer {
        print("defer 안에서 실행된 코드.")
    }
    
    if data < 0 {
        print("예외 던져주기 전에 실행된 코드.")
        throw CustomError(code:400, message:"데이터에서 에러 발생함.")
    }
}

do {
    try checkData(data: -10)
} catch let er where er is CustomError {
    let errorInfo = er as! CustomError
    print("에러: \(errorInfo.code), \(errorInfo.message)")
} catch {
    print("기타 에러")
}
//do {
//    try checkData(data:-10)
//} catch let error where error is CustomError {
//    let errorInfo = error as! CustomError
//    print("에러 : \(errorInfo.code), \(errorInfo.message)")
//} catch {
//    print("기타 에러")
//}
