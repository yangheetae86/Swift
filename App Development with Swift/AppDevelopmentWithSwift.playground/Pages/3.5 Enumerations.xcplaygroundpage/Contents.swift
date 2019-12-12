import Foundation
import UIKit

enum Genre {
    case animated, action, romance, documentary, biography
}
struct Movie {
    var name: String
    var releaseYear: Int
    var genre: Genre
}

let movie = Movie(name: "둠3", releaseYear: 2222, genre: .animated)

enum compassPoint {
    case north, east, south, west
}

let compassHeading = compassPoint.west

switch compassHeading {
case .north:
    print("go to north")
case .east:
    print("go to east")
case .south:
    print("go to south")
case .west:
    print("go to west")
}

if compassHeading != .west {
    print(compassHeading)
}
