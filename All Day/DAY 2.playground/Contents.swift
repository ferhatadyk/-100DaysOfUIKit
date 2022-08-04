import UIKit

//Arrays

let Ferhat = "Ferhat adiyeke"
let Namık = "Namık Kemal"
let Fatih = "Fatih Mor"
let Yusuf = "Yusuf Koç"

let beatles = [Ferhat, Namık, Fatih, Yusuf]
beatles[0]
beatles[2]


var scores: [Int] = [10, 12, 9]
scores[1]

//Sets

let colors = Set(["kırmızı","teşil","mavi"])
//sıralı degildir ve tekrR ETMEZ
let colors2 = Set(["mavi","sarı","sarı","pembe","yeşil"])


//Tuples


var sam = (first: "Tatlor", last: "Swift")

sam.1
sam.first

//Arrays vs sets vs tuples

let adress =  (house: 555, ff: "fwadsfasdg", city: "ist" )

let set = Set(["aa","bb","cc"])

let  python = ["erci", "dfds", "ff", "gg", "gg"]
//Unutmayın: diziler sırayı korur ve kopyaları olabilir, setler sırasızdır ve kopyaları olamaz ve demetlerin içinde sabit sayıda sabit tip değeri vardır.
//Dictionaries

let heights =
[
    "swift": 1.67,
    "asp": 1.81
]

heights["asp"]


//Dictionary default values

let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]

favoriteIceCream["Paul"]
favoriteIceCream["ferhat", default: "Unknown"]


//Creating empty collections
var teams = [String: String]()
teams["Paul"] = "Red"

var results = [Int]()
var words = Set<String>()
var numbers = Set<Int>()
var scdores = Dictionary<String, Int>()
var redsults = Array<Int>()

//Enumerations
let result = "failure"
let result2 = "failed"
let result3 = "fail"

enum Results {
    case Success
    case failure
    
}



//Enum associated values



enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "Football")



enum Weather {
    
    case sunny
    case windy(speed: Int)
    case rainy(chance: Int, amount: Int)
    
    
}

enum Weaather {
    case sunny
    case lightBreeze
    case aBitWindy
    case quiteBlusteryNow
    case nowThatsAStrongWind
    case thisIsSeriousNow
    case itsAHurricane
}

//Enum raw values

enum Planet: Int {
    case mercury
    case venus
    case earth
    case mars
    
    
}
let earth = Planet(rawValue: 2)

enum Plfanet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}

