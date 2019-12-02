enum Meal {
    case beackfast, lunch, dinner, snack
    func foodChoices() -> [FoodChoice] {
        switch self {
        case .beackfast:
            return [.cereal]
        case .lunch:
            return [.salad, .sandwich, .pizza]
        case .dinner:
            return [.salad, .pie, .pizza]
        case .snack:
            return [.bikets]
        }
    }
}

enum FoodChoice {
    case cereal, salad, sandwich, pizza, bikets, pie
}

let meal: Meal = .lunch
let foodChoices = meal.foodChoices()
