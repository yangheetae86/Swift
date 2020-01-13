class ShoppingList<Element> {
//    var list = [Element]();
    var list:[Element] = []
    
    
    func add(newElement: Element) -> Int {
        list.append(newElement)
        return list.count
    }
    
    func get(index: Int) -> Element {
        return list[index]
    }
    
    func remove(at: Int) -> Element {
        return list.remove(at: at)
    }
}
var mylist = ShoppingList<String>()
var count = mylist.add(newElement: "양배추")
print("쇼핑 리스트에 추가했다. \(count)")


//var mylist = ShoppingList<String>() // 제네릭
//var count = mylist.add(newElement:"양배추")
//print("쇼핑리스트에 추가했습니다. : \(count)")

//class ShoppingItem {
//    var name : String
//    var price : Int
//
//    init(name:String, price:Int) {
//        self.name = name
//        self.price = price
//    }
//}
//
//var mylist2 = ShoppingList<ShoppingItem>()
//var count2 = mylist2.add(newElement:ShoppingItem(name: "양배추", price: 1000))
//print("ShoppingItem 객체를 쇼핑리스트에 추가했습니다. : \(count2)")
//
//
//func show<T>(data: T) -> T {
//    print("데이터 : \(data)")
//    return data
//}
//
//show(data:"안녕하세요!")
//show(data:10.1)
//





