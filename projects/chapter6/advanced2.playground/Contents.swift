//func add(first a:Int, second b:Int, callback:(Int) -> Void) {
//    let result = a + b
//    callback(result)
//}
//
//func show(result:Int) {
//    print("add 함수를 실행한 결과 : \(result)")
//}
//
//add(first: 10, second: 10, callback: show)
//

func successPrint() {
    print("성공")
}

func failPrint() {
    print("실패")
}

var names = [1:"소녀시대",2:"여자친구",3:"티아라"]
func getData(i:Int, success sCallback : () -> Void, fail fCallback : () -> Void) -> String? {

    if let name = names[i] {
        sCallback()

        return name
    }

    defer {
        fCallback()
    }

    return nil
}

var result = getData(i: 1, success: successPrint, fail: failPrint)
var result2 = getData(i:5, success:successPrint, fail:failPrint)

var result3 = getData(i:0,
                      success: {
                          () -> Void in
                          print("성공했습니다.")
                      },
                      fail: {
                          () -> Void in
                          print("실패했습니다.")
                      })
