import Foundation


let names : NSMutableDictionary = [1:"소녀시대", 2:"걸스데이", 3:"티아라"]
NSLog("딕셔너리의 원소 개수 : %d", names.count)

names.setObject("애프터스쿨", forKey:4 as NSCopying)
names.removeObject(forKey: 1)

var index = 0
for (key, value) in names {
    print("원소 #\(index) -> \(key):\(value)")
    
    index += 1
}
