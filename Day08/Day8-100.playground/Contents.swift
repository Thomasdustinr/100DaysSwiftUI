import Cocoa

// How to provide default values for parameters
func printTimesTable(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTable(for: 5, end: 20)
printTimesTable(for: 8)

var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)
characters.removeAll(keepingCapacity: true)
print(characters.count)

// How to handle errors in functions
enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 { throw PasswordError.short }
    if password == "12345" { throw PasswordError.obvious}
    
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

let string = "12345"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Password is too short.")
} catch PasswordError.obvious {
    print("Password is too obvious.")
} catch {
    print("Something went wrong: \(error)")
}

// Checkpoint 4
enum SquareRootError: Error {
    case outOfBounds
    case noRoot
}

func integerSquareRoot(of number: Int) throws -> Int {
    if number < 1 || number > 10_000 {
        throw SquareRootError.outOfBounds
    }
    
    for i in 1...number {
        if i * i == number {
            return i
        }
    }
    
    throw SquareRootError.noRoot
}

// Example usage
do {
    let result = try integerSquareRoot(of: 25)
    print("Square root is \(result)")
} catch SquareRootError.outOfBounds {
    print("Number is out of bounds.")
} catch SquareRootError.noRoot {
    print("No integer square root found.")
} catch {
    print("An unknown error occurred.")
}

