import UIKit

// for loops

let count = 1...10

for number in count {
    print("Number is \(number)")
}
let albums = ["Red", "1989", "Reputation"]

for album in albums {
    print("\(album) is on Apple Music")
}
print("Players gonna ")

for _ in 1...5 {
    print("play")
}


// while loops

var number = 1

while number <= 20 {
    print(number)
    number += 1
}

print("Ready or not, here I come!")

// Repeat loops

let numbers = [1, 2, 3, 4, 5]
var random = numbers.shuffled()

while random == numbers {
    random = numbers.shuffled()
}

// exiting loops

var countDown = 10

while countDown >= 0 {
    print(countDown)
    countDown -= 1
}

print("Blast off!")

while countDown >= 0 {
    print(countDown)

    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }

    countDown -= 1
    
    let scores = [1, 8, 4, 3, 0, 5, 2]
    var count = 0

    for score in scores {
        if score == 0 {
            break
        }

        count += 1
    }

    print("You had \(count) scores before you got 0.")
}

// exiting multiple loops

for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")
    }
}

outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")
    }
}

outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")

        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}
// skipping items

for i in 1...10 {
    if i % 2 == 1 {
        continue
    }

    print(i)
}

// infinite loops

var counter = 0

while true {
    print(" ")
    counter += 1

    if counter == 273 {
        break
    }
}


