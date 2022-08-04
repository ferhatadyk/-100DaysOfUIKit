import UIKit

//Arithmetic Operators

let firstScore = 12
let secondScore = 4
let total = firstScore + secondScore
let difference = firstScore - secondScore
let product = firstScore * secondScore
let divided = firstScore / secondScore
let remainder = 13 % secondScore
let weeks = 465 / 7
let days = 465 % 7
print("There are \(weeks) weeks and \(days) days until the event.")
let number = 465
let isMultiple = number.isMultiple(of: 7)

//Operator overloading

let meaninigOfLife = 42
let blabla = 42 + 42

let fakers = "ferhat adiyeke"
let fuce = "bilmiyor"  +  fakers

let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf
//Compound assignment operators

var score = 95
score -= 5

var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"
//Comparison operators

let first = 5
let second = 4

first == second
first !=  second

first > second
first <= second

"Taylor" <= "Swift"

let firstName = "Paul"
let secondName = "Sophie"

let firstAge = 40
let secondAge = 10
print(firstName == secondName)
print(firstName != secondName)
print(firstName < secondName)
print(firstName >= secondName)

print(firstAge == secondAge)
print(firstAge != secondAge)
print(firstAge < secondAge)
print(firstAge >= secondAge)

enum Sizes: Comparable {
    case small
    case medium
    case large
}
let fiirst = Sizes.small
let seecond = Sizes.large
print(first < second)


//Conditions


let sayii = 11
let sayi = 10

if sayi + sayii == 2 {
    
    print("Aces - Lucky.")
    
} else if sayi + sayii == 21 {
    print("Blackjack!.")
} else {
    print("Regular cards")
}





let scoore = 9001

//if scoore > 9000 {
 //   print("It's over 9000!")
//}else {
  //  print("It's not over 9000")}


if scoore > 9000 {
    print("Its over 9000")
} else if  scoore == 9000 {
    print("exalty")
}  else {
    print("ıts not over 9000")
    
}


//Combining conditions

let age1 = 20
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}


if age1 > 18 || age2 > 18 {
    print("At least one is over 18")
}

if isOwner == true || isAdmin == true {
    print("You can delete this post")
}

if (isOwner == true && isEditingEnabled) || isAdmin == true {
    print("You can delete this post")
}



//The ternary operator


let firstCard = 11
let secondCard = 10
print(firstCard == secondCard ? "Cards are the same" : "Cards are different")


if firstCard == secondCard {
    print("Cards are the same")
} else {
    print("Cards are different")
}
//Switch statements


let weather = "sunny"
switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
default:
    print("Enjoy your day!")
}
switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough
default:
    print("Enjoy your day!")
}


//Range operators


let sccore = 85

switch sccore {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}
