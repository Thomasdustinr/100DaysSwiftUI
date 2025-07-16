import Cocoa

//How to store ordered data in arrays
var batmanCharacters = ["Batman", "Robin", "Alfred", "Catwoman"]
let numbers = [1, 2, 3, 4, 5]
var decimals = [2.0, 4.0, 6,0]

print(batmanCharacters[2])
print(numbers[3])
print(decimals[0])

batmanCharacters.append("Joker")
batmanCharacters.append("Mr. Freeze")
decimals.append(8.0)

var scores = Array<Int>()
scores.append(100)
scores.append(90)
scores.append(80)
print(scores[2])

var songs = [String]()
songs.append("Thunderstruck")
songs.append("Sweet Child O' Mine")
print(songs.count)

var shows = ["Breaking Bad", "Mr. Robot" , "Beef"]
print(shows.count)

shows.remove(at: 2)
print(shows.count)

shows.removeAll()
print(shows.count)

let animals = ["Dog", "Cat", "Fish", "Bird"]
print(animals.contains("John"))

let cities = ["New York", "Los Angeles", "Chicago", "Houston"]
print(cities.sorted())

let candy = ["Sour Patch Kids", "Reese's Pieces", "Skittles", "Starburst"]
let reverseCandy = candy.reversed()
print(reverseCandy)

//How to store and find data in dictionaries
var employeeData = ["Porsche", "Dog", "1990"]
print("Car: \(employeeData[0])")
print("Pet: \(employeeData[1])")
print("DOB: \(employeeData[2])")

let employee2 = ["Car": "Porsche", "Pet": "Dog", "DOB": "1990"]
print(employee2["Car", default: "Unknown"])
print(employee2["Pet", default: "Unknown"])
print(employee2["DOB", default: "Unknown"])

let hasGraduated = [
    "Joey": false,
    "Kimberly": true,
    "Sam": false
]

let olympics = [
    2012: "London",
    2016: "Rio",
    2021: "Tokyo"
]

print(olympics[2012, default: "Unknown"])

var heights = [String: Int]()
heights["Joey"] = 60
heights["Kimberly"] = 58
heights["Sam"] = 62

var codeNames = [String: String]()
codeNames["Joey"] = "The Peacemaker"
codeNames["Sam"] = "The Snake"
codeNames["Joey"] = "The Glowing One"

//How to use sets for fast data lookup
let videoGames = Set(["Lies of P", "Sekiro", "God of War"])
print(videoGames)

var videoGames2 = Set<String>()
videoGames2.insert("Lies of P")
videoGames2.insert("Sekiro")
videoGames2.insert("God of War")
print(videoGames2)

//How to create and use enums
var selected = "Monday"
selected = "Tuesday"
selected = "January"
selected = "Friday "

enum seasons {
    case spring
    case summer
    case fall
    case winter
}

var season = seasons.spring
season = .summer
season = .fall
season = .winter







