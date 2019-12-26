class Rectangle {
    var width : Float!
    var height : Float!
    
    struct Info {
        var name : String!
        var count : Int!
    }
    
    init(width:Float, height:Float) {
        self.width = width
        self.height = height
    }
}

let info = Rectangle.Info(name:"정사각형", count:0)
print("사각형 정보 : \(info.name), \(info.count)")
