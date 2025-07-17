import Cocoa

// How to use type annotations
let surName = "Khan"
var scores = 9

let playerName: String = "Joe"
let luckyNumber: Int = 7
let pi: Double = 4.032

var albums: [String] = ["Thriller", "Back in Black", "Purple Rain"]
var user: [String: String] = ["location": "New York"]
var books: Set<String> = Set(["To Kill a Mockingbird","1984"])

var soda: [String] = ["Sprite", "Coca-Cola", "Pepsi"]
var teams: [String] = [String]()
var cities: [String] = []
var clues = [String]()

enum UIStyle {
    case light, dark, system
}

var style = UIStyle.dark
style = .light
style = .system

let userName: String
// lots of complex code
userName = "@yo123"
// more complex code
print(userName)

// Checkpoint 2

var horrorCharacters = ["Freddy Krueger", "Jason Voorhees", "Michael Myers", "Chucky"]
horrorCharacters.append("Pinhead")
print(horrorCharacters.count)

var favoriteCharacters = Set(["Freddy Krueger", "Jason Voorhees", "Michael Myers", "Chucky"])
favoriteCharacters.insert("Albert Wesker")
var setCount = favoriteCharacters.count
print(setCount)


