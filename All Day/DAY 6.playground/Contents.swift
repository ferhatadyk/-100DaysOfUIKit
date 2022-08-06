import UIKit

//Creating basic closures

let driving = {
    print("I'm driving in my car")
}

driving()
//Accepting parameters in a closure
let driving = { (place: String) in
    print("I'm going to \(place) in my car")
}

driving("London")



//Returning values from a closure
let driving = { (place: String) in
    print("I'm going to \(place) in my car")
}
let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}
let message = drivingWithReturn("London")
print(message)

//Closures as parameters

let driving = {
    print("I'm driving in my car")
}
func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}
travel(action: driving)

//Trailing closure syntax



func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}
travel() {
    print("I'm driving in my car")
}
travel {
    print("I'm driving in my car")
}
