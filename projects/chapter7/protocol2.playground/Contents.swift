class MyCalculator : Calculator {
    var owner = ""
   
    //var duration : Float = 0.0
    var duration : Float {
        get {
            return 0
        }
        set { }
    }
    
    static func getType() -> String {
        return "계산기"
    }
    
    required init(owner: String) {
        self.owner = owner
    }
    
    func add(first a: Int, second b: Int) -> Int {
        return a + b
    }
}

protocol Calculator {
    static func getType() -> String
    init(owner: String)
    func add(first a: Int, second b: Int) -> Int
    
    var duration : Float { get set }
    
}

var calculator = MyCalculator(owner: "소녀시대")
var result = calculator.add(first:10, second:10)
print("add 결과 -> \(result)")
