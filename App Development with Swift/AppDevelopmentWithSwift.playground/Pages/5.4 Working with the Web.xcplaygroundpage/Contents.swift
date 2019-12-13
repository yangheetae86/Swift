import Foundation
import UIKit
import PlaygroundSupport
// Create a Data Task
let url = URL(string: "https://www.apple.com")!
let task = URLSession.shared.dataTask(with: url) { (data,
responce, error) in
    if let data = data {
        print(data)
    }
}
// OBJECTIVE
extension URL {
    func withQueries(_ queries: [String: String]) -> URL? {
        var components = URLComponents(url: self, resolvingAgainstBaseURL: true)
        components?.queryItems = queries.map
            {URLQueryItem(name: $0.0, value: $0.1)}
        return components?.url
    }
}
PlaygroundPage.current.finishExecution()
