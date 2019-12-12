import Foundation
import UIKit

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
        case single, multiple, ranged
}
struct Answer {
    var text: String
    var type: AnimalType
}
enum AnimalType: Character {
    case dog = "🐶", cat = "🐱", rabbit = "🐰", turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "개"
        case .cat:
            return "고양이"
        case .rabbit:
            return "토끼"
        case .turtle:
            return "거북이"
        }
    }
}

var question: [Question] = [
    Question(text: "Which food do you like the most?",
             type: .single,
             answers: [
                Answer(text: "Steak", type: .dog),
                Answer(text: "Fish", type: .cat),
                Answer(text: "Carrots", type: .rabbit),
                Answer(text: "Corn", type: .turtle),
    ]),
    Question(text: "Which activities do you enjoy?",
             type: .multiple,
             answers: [
                Answer(text: "Swimming", type: .turtle),
                Answer(text: "Sleeping", type: .cat),
                Answer(text: "Cuddling", type: .rabbit),
                Answer(text: "Eating", type: .dog),
    ]),
    Question(text: "How much do you enjoy car rides",
             type: .ranged,
             answers: [
                Answer(text: "I dislike them", type: .cat),
                Answer(text: "I get a little nervous", type: .cat),
                Answer(text: "I barely notice them", type: .rabbit),
                Answer(text: "I love them", type: .turtle),
    ])
]
