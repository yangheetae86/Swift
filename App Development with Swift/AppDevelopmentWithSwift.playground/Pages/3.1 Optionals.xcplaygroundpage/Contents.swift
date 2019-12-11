import Foundation
import UIKit

struct Book {
    var name : String
    var publicationYear : Int?
}
let firstHarryPotter = Book(name: "the Sorcerer's Stone", publicationYear: 1997)
let secondHarryPotter = Book(name: "the Chamber of Secrets", publicationYear: 1998)
let thirdHarryPotter = Book(name: "the Prisoner of Azkaban", publicationYear: 1999)
let books = [firstHarryPotter, secondHarryPotter, thirdHarryPotter]
let unannouncedBook = Book(name: "Rebels and Lions", publicationYear: nil)

//FAILABLE INITIALIZERS
struct Toddler {
    var name: String
    var monthsOld: Int
    
    init?(name: String, monthsOld: Int) {
        if monthsOld < 12 || monthsOld > 36 {
            return nil
        } else {
            self.name = name
            self.monthsOld = monthsOld
        }
    }
}

class ViewController: UIViewController {
    @IBOutlet var label: UILabel!
}
