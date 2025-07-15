import Cocoa

//How to store truth with Booleans
let fileName = "picture.png"
print(fileName.hasSuffix(".png"))

let number = 60
print(number.isMultiple(of: 10))

let workDone = true
var isFinished = false
print(isFinished)
isFinished.toggle()
print(isFinished)

let isMultiple = 60
print(isMultiple.isMultiple(of: 10))

var isSleeping = false
isSleeping = !isSleeping
print(isSleeping)
isSleeping = !isSleeping
print(isSleeping)

//How to join strings together
let firstPart = "Hello"
let secondPart = " World!"
let greeting = firstPart + secondPart

let day = "Today"
let howWasIt = " a good day"
let lyric = day + " was" + howWasIt
print(lyric)

let doorCode = "2" + "4" + "6" + "8"

let quote = "You're gonna need a \"bigger\" boat"

let name = "Batman"
let money = 100000
let message = "Hello, I am \(name) and I have $\(money) in my wallet."
print(message)

print("10 + 5 = \(10 + 5)")

//Checkpoint 1
let tempCelcius = 25.0
let tempFarhenheit = (tempCelcius*9/5+32)
print(tempCelcius, "degrees celcius is equal to", tempFarhenheit, "degrees farhenheit")

let celsius = 25.0
print ("This is the tempertaure in celcius, \(celsius). If we wanted to convert to farhenheit we would need to do celcius times 9, divided by 5, add 32, and then we would get \(celsius*9/5+32)!")
