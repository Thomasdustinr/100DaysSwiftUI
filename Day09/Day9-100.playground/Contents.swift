import Cocoa

// How to create and use closures
func greetUser() {
    print("Hi there!")
}

greetUser()
var greetCopy = greetUser
greetCopy()

let sayHello = { (name: String) -> String in
    "Hi \(name)!"
}

sayHello("Taylor")

func greetUser2() {
    print("Hi there!")
}

var greetCopy2: () -> Void = greetUser

func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

let data: (Int) -> String = getUserData
let user = data(1989)
print(user)

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)

func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    
    return name1 < name2
}

//let captainFirstTeam = team.sorted(by: captainFirstSorted)
//print(captainFirstTeam)

let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
    
})

print(captainFirstTeam)

// How to use trailing closures and shorthand syntax

let team2 = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]

let captainFirstTeamm = team2.sorted {
    if $0 == "Suzanne" {
        return true
    } else if $1 == "Suzanne" {
        return false
    }
    
    return $0 < $1

}

let reverseTeam = team2.sorted { $0 > $1 }

let tOnly = team2.filter { $0.hasPrefix("T") }
print(tOnly)

let uppercaseTeam = team2.map { $0.uppercased() }
print(uppercaseTeam)

// How to accept functions as parameters
func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()
    
    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }
     return numbers
}

let rolls = makeArray(size: 50) {
    Int.random(in: 1...20)
}

func generateNumber() -> Int {
    Int.random(in: 1...20)
}

let newRolls = makeArray(size: 50, using: generateNumber)
print(newRolls)

func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done")
}

doImportantWork {
    print("This is the first work")
} second: {
    print("This is the second work")
} third: {
    print("This is the third work")
}

// Checkpoint 5
let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

luckyNumbers
    .filter { !$0.isMultiple(of: 2) }
    .sorted()
    .map { "\($0) is a lucky number" }
    .forEach { print($0) }


