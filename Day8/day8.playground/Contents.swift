/*
 # Day 8
 1. Creating your own structs
 2. Computed properties
 3. Property observers
 4. Methods
 5. Mutating methods
 6. Properties and methods of strings
 7. Properties and methods of arrays
 */

//Creating you own structs
struct user {
    var name: String
    var age: Int
    var surname: String
}
let myuser = user(name:"Rashi", age: 21, surname: "jain")
print("Hello my user: \(myuser.name) \(myuser.surname)")

//giving default values to the item of struct
struct user2 {
    var name = "test"
    var age: Int
    var surname: String
}
let myuser2 = user2( age: 21, surname: "jain")
print("Hello my user: \(myuser2.name) \(myuser2.surname)")

//Computed properties in a struct
struct sport {
    var name: String
    var isOlympicSport : Bool
    var olympicStatus : String {
        if isOlympicSport {
            return "\(name) is an olympic sport"
        
        }
        else {
            return "\(name) is not an olympic sport"
        }
    }
}
let mySport = sport(name: "Chess", isOlympicSport: false)
print("mysport status is:\(mySport.olympicStatus)")

//property observers - willSet and didSet

struct progress {
    var amount: Int {
        didSet{
            print("In the did set function: \(amount)")
        }
        willSet{
            print("In the willSet function: \(amount)")
        }
    }
    var task: String
}
var myprogress = progress(amount: 10, task: "Loading data")
myprogress.amount = 20
print(myprogress.task , myprogress.amount)
myprogress.amount = 40
print(myprogress.task , myprogress.amount)
myprogress.amount = 80
print(myprogress.task , myprogress.amount)

//methods
struct village {
    var population : Int
    func calculateTax() -> Int {
        return population * 1000
    }
}
var myVillage = village(population: 200)
print(myVillage.calculateTax())


// Mutation struct
//we need to add this keyword before the func if we are changing any property of a struct inside that function.
struct person {
    var name: String
    mutating func makeAnonymous ()->String{
        name = "Anonymous"
        return name
    }
}
var myPerson = person(name: "test")
print(myPerson.makeAnonymous())
let myConstantPerson = person(name: "Rashi")
//print(myConstantPerson.makeAnonymous()) this will give us error

//Properties and methods of String
//String is a struct in swift language
let str = "Do or do not, there is no try!"
print(str.count)
print(str.uppercased())
print(str.hasPrefix("DO"))
print(str.sorted())

//properties of Array
//Array is a struct in swift
var toys = ["Woddy"]
toys.count
toys.append("snail")
toys.endIndex
toys.firstIndex(of: "snail")
toys.sorted()
toys.remove(at: 0)
toys


//If you want to check whether a string is empty, you should write this:
let myString = "Hello World!"
if myString.isEmpty {
    // code
}
//And not this:
if myString.count == 0 {
    // code
}
//Why using isEmpty is faster than checking count == 0
let name = "Guybrush Threepwood"
print(name[0])

extension String {
    subscript(i: Int) -> Character {
        return self[index(startIndex, offsetBy: i)]
    }
}

for i in stride(from: 0, to: name.count, by: 2) {
    print(name[i])
}

/*When we read the size of a string using count, Swift needs go through all the characters it has to figure out just how long the string is: it starts at the beginning, and counts through to the end. Reading the count of a string is an O(n) operation
In comparison, using isEmpty can return true or false after one simple check: does the start index of my string equal the end index of my string? If so, the string is empty and we’re done – there’s no need to count through all the characters.
*/
