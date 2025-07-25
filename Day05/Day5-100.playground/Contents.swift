import Cocoa


// How to check a condition is true or false

let score = 88
if score > 80 {
    print("Congratulations! You passed the exam.")
}

let speed = 88
let percentage = 85
let age = 18

if speed >= 88 {
    print("Wow thats fast!")
}

if percentage < 85 {
    print("You need to study more.")
}

if age >= 18 {
    print("You're eligible to vote.")
}

let ourName = "John"
let friendName = "Jane"

if ourName < friendName {
    print("It's \(ourName) and \(friendName)")
}

if ourName > friendName {
    print("It's \(friendName) and \(ourName)")
}

var numbers = [1, 2, 3]
numbers.append(4)

if numbers.count > 3 {
    numbers.remove(at: 0)
}

print(numbers)

let country = "Canada"

if country == "Australia" {
    print("G'day!")
}

let name = "Taylor Swift"

if name != "Anonymous" {
    print("Welcome, \(name)")
}

var username = "taylorswift13"

if username == "" {
    username = "Anonymous"
}

print("Welcome, \(username)")

// How to check multiple conditions

let age2 = 16

if age2 >= 18 {
    print("You can vote in the next election. ")
} else {
    print("Sorry, you're too young to vote")
}

let temp = 25

if temp > 20 && temp < 30 {
    print("It's a nice day.")
}

let userAge = 14
let hasParentalConsent = true

if age >= 18 || hasParentalConsent == true {
    print("You can buy the game!")
}

enum TransportOption {
    case airplane, helicopter, bicycle, car, escooter
}

let Transport = TransportOption.airplane

if Transport == .airplane || Transport == .helicopter {
    print("Let's fly!")
} else if Transport == .bicycle {
    print("I hope there's a bike path...")
} else if Transport == .car {
    print("Time to get stuck in traffic.")
} else {
    print("Let's rent a scooter!")
}

// How to use switch statements to check multiple conditions

enum Weather {
    case sun, rain, wind, snow, unknown
}

let forecast = Weather.sun

switch forecast {
case .sun:
    print ("It's a sunny day!")
case .rain:
    print("Pack an umbrella.")
case .wind:
    print("Wear something warm")
case .snow:
    print("School is cancelled")
case .unknown:
    print("Our forecast generator is broken ")
}

let place = "Metropolis"

switch place {
case "Gotham":
    print("You're Batman.")
case "Mega-City One":
    print("You're Judge Dredd.")
case "Wakanda":
    print("You're Black Panther.")
default:
    print("Who are you?")
}

let day = 5
print("My true love gave to me...")

switch day {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}

// How to use the ternary conditional operator for quick tests

let age3 = 18
let canVote = age >= 18 ? "Yes" : "No"
print(canVote)

let hour = 23

print(hour < 12 ? "It's before noon" : "It's after noon")

let names = ["Jayne", "Kaylee", "Mal"]
let crewCount =  names.isEmpty ? "No one" : "\(names.count) people"
print(crewCount)

enum Theme {
    case light, dark
}

let theme = Theme.dark

let background = theme == .dark ? "black" : "white"
print(background)
