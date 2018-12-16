//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var hell = "read"

print ("Hello world!")

var myVariable = 43
myVariable = 50

let myConstant = 43


let expiremnt: Float = 4.0

let label = "The widht is "

let width = 94

let widthLable = label + String( width)

let apples = 3

let oranges = 5

let appleSummary = "I have \(apples) apples"
let fruitSummay = "I have \(apples + oranges) pieces of fruits"

var name = "Ruyonga"
let myFloatValue: Float  = 4.0

let message = "Hello \(name)"

let theValue = "My Float Value is \(myFloatValue)"
let theaquote = """
    Helo
From
The
Other Side
"""

var shoppingList = ["catfish", "water", "tulips", "blue paint"]

shoppingList[3]

var occupations = [
    "Malcom" : "Captain",
    
    "Kaylee" : "Mechanic"
    ]

let emptyArray = [String]()

let emptyDictioinary = [String: Float]()

shoppingList = []   //empty Array
occupations = [:]   //empty dictionary




let individualScores = [75, 43, 103, 87, 12]

var teamScore = 0

for score in individualScores{    //brackets are a must
    
    if score > 50 {
        
         teamScore += 3
        
    } else {
        
        teamScore += 1
        
            }
    }

print(teamScore)

var optionalString: String? = "Hello"  //this to caer for a nill

print(optionalString == nil)

var optionalName: String? = nil   //decalaring optional

var greeting = "Hello"

if let name = optionalName{
        greeting = "Hello,  \(name)"
}else{

    greeting = "No name found"
}


let nickName: String? = nil

let fullName: String =  "John Appleseed"

let informalGreeting = "HI \(nickName ?? fullName)"   // if value is nil use the fullname






let vegetable = "celery"

  switch vegetable {
    
        case "celery":
            print("Add some stuff and make ants on a log.")
    
        case "cucumber", "watercress":
    
            print("That would make a good team sandwich")
    
        case let x where x.hasSuffix("pepper"):
        
            print("Is it a pcicy \(x)?")
    
        default:
            print("Everything tastes good in soup")
}



let interestingNumbers  = [
    "Prime" : [2, 3, 5, 7, 11, 13],
    
    "Square": [1, 4, 9, 16, 25],
    
    "Fibonacci" : [1,1,2, 3, 5, 8],
   
    ]


var largest = 0
var largestKind: String = "nil"

for(kind, numbers) in interestingNumbers{
    for number in numbers{
        if number > largest{
            
            largest = number
            largestKind = kind
            
         }
        }
    }
print(largest)

print(largestKind)


var n = 2

while n < 100{
    n *= 2
}
print (n)

var m = 2

repeat{
    m *= 2
}while m < 100

print(m)

var total = 0

for i in 0..<4 {
    total += i
}

print(total)


//Function
//Declare   parameter                      Return type
func greet(person: String, day: String) -> String{
    
    return "Hello \(person), today is \(day)."
}

greet(person: "Daniel", day: "Thursday")


func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int){
    var min  = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores{
        if score > max {
            max = score
        }
        else if score < min {
            min = score
        }
        sum += score
    }
    
    
    return (min, max, sum)
}

let statistics = calculateStatistics(scores: [5, 10, 20, 34, 6, 100])

print(statistics.sum)
print(statistics.min)





func returnFifteen() -> Int {
    var y = 10
    
    func add(){
        y += 5
    }
    add()
    
    return y
}

returnFifteen()

func makeIncrementer() -> ((Int) -> Int) {
   
    func addOne(number: Int) -> Int {
        
        return  1 + number
    }
    
    return addOne
}

var  increment = makeIncrementer()
increment(7)

func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
    
}


func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]

hasAnyMatches(list: numbers, condition: lessThanTen)


//closure

numbers.map({ (number: Int) -> Int in
    let result = 3 * number
    return result
})

let mappedNumbers = numbers.map({ number in 3 * number })

print(mappedNumbers)

//Objects and classes

class Shape{
    
    var numberOfSides = 0
    let theShape: String = " triangle"
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
    
    func myMsg(aSide: Int) -> String {
        
        return "This is a func of side\(theShape)"
    }
}

var shape = Shape()

shape.numberOfSides = 7
//shape.theShape = "Rectangle"

var shapeDescription = shape.simpleDescription()
//var mymessage = shape.myMsg(aSide: "Rectangle" )



class NamedShape {
    var numberOfSides: Int  = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String  {
        return "A shape with \(numberOfSides) sides"
    }
}


class Square: NamedShape {
    
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        
        return sideLength * sideLength
    }
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}
let test = Square(sideLength: 5.2, name: "My test square")
test.area()

test.simpleDescription()


class Circle: NamedShape{
    
    var radius: Double
    init(radius: Double, name: String) {
        
        self.radius = radius
        super.init(name: name)
        numberOfSides = 0
        
    }
    func area() -> Double {
        //2 * Math.pie* radius
        return 2 * 3.14 * (radius * radius)
    }
    
}
let test2 = Circle(radius: 2.0, name: "My test cirle")
test2.area()
test2.simpleDescription()


class EquilateralTriangle: NamedShape {
    
    var sideLength: Double = 0.0
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        
        super.init(name: name)
        numberOfSides = 3
    }
    
    var perimeter: Double {
        
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }
    
    override func simpleDescription() -> String {
        return "An equilateral triangle with side of length \(sideLength)."
    }
    
}

var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")

print(triangle.perimeter)
triangle.perimeter = 9.9

print(triangle.sideLength)


//let optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")
//let sideLength = optionalString?.sideLength

//Enumerations And Srtuctures

enum Rank: Int {
    
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    
    func simpleDescription() -> String {
        
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}

let ace = Rank.ace

let aceRawValue = ace.rawValue




protocol ExampleProtocol {
    var simpleDescription: String { get }
    
    mutating func adjust()

}

class SimpleClass: ExampleProtocol {
    
    var simpleDescription: String = "A very simple class"
    
    var anotherProperty: Int =  69105
    
    func adjust() {
        simpleDescription += " Now 100% adjusted."
    }
    
}

var a = SimpleClass()
a.adjust()

let aDescription = a.simpleDescription

struct SimpleStructure: ExampleProtocol {
    
    var simpleDescription: String = "A simple Structure"
    
    mutating func adjust() {
        simpleDescription += "(adjusted)"
    }
    
}

var b = SimpleStructure()
b.adjust()

let bDescription = b.simpleDescription



for i in "Dog!🐶" {

     print(i)
}



var someInts = [Int]()
someInts.append(9)

var someStrs = [String]()

someStrs += ["John", "List", "Home"]

var someStr:[String] = ["Food", "BBD"]

someStr.count
someStr.append("John")


var letters = Set<String>()
letters.insert("a")

var favs: Set<String> = ["llil", "iou", "kk"]

favs.contains("llil")

var nameOfInts: Dictionary<Int, String> = [Int:String]()
nameOfInts[2] = "two"
nameOfInts[3] = "three"
nameOfInts[5] = "five"
nameOfInts[9] = "nine"
nameOfInts[9]


var namesOfV: Dictionary<Int, [String]> = [Int: [String]]()

namesOfV[2] = ["two","dvah", "deux"]
namesOfV[2]?[2]





