import UIKit

/*
 # Day 11
 1. Protocols
 2. Protocol inheritance
 3. Extensions
 4. Protocol extensions
 5. Protocol-oriented programming
 */

//protocol
//Protocols are a way of describing what properties and methods something must have. You then tell Swift which types use that protocol – a process known as adopting or conforming to a protocol.
protocol identifiable {
    var id : String {get set}
}
struct book : identifiable{
    var id: String
}
let myBook = book(id: "123")
print(myBook.id)

func displayId(thing : identifiable)
{
    print("id is \(thing.id)")
}
displayId(thing: myBook)

//It's not possible to create set-only properties in Swift.
//protocol Buildable {
//    var numberOfBricks: Int { set }
//    var materials: [String] { set }
//}
struct Book {
    var name: String
}

func buy(_ book: Book) {
    print("I'm buying \(book.name)")
}

protocol Purchaseable {
    var name: String { get set }
}

struct BookPro: Purchaseable {
    var name: String
    var author: String
}

struct Movie: Purchaseable {
    var name: String
    var actors: [String]
}

struct Car: Purchaseable {
    var name: String
    var manufacturer: String
}

struct Coffee: Purchaseable {
    var name: String
    var strength: Int
}

func buyPro(_ item: Purchaseable) {
    print("I'm buying \(item.name)")
}

buyPro(BookPro.init(name: "Great Expectations", author: "Charles Dickens"))
buyPro(Car.init(name: " Audi Q7", manufacturer: "Audi"))
//protocol inheritance
//One protocol can inherit from another in a process known as protocol inheritance

protocol Payable {
    func calculateWages()->Int
}

protocol NeedsTraining {
    func study()
}
protocol  HasVacations {
    func takeVacations(days: Int)
}
protocol Employee : Payable, NeedsTraining, HasVacations {}

//The second common reason for using protocol inheritance is to add extra restrictions when they make sense. For example, Swift has a protocol called Equatable, which means “this thing can be checked for equality against other instances of the same type,” and it’s what makes 5 == 6 return false. Swift also has a protocol called Comparable, which means “this type can be checked to see whether it is less than or greater than another instance of the same type,” and it’s what makes "Hello" < "World" return true.

//extensions
//Extensions allow you to add methods to existing types, to make them do things they weren’t originally designed to do.
extension Int {
    func getSqared()->Int{
        return self * self
    }
}
let myNumber = 8
myNumber.getSqared()

//protocol extension
//we can extend the protocol and add new methods to it using protocol extension
let pythons = ["Eric","Graham","Michael","Jerry","Jerry"]
let beatles = Set(["Jon","Paul"])
//Swift’s arrays and sets both conform to a protocol called Collection, so we can write an extension to that protocol to add a summarize() method to print the collection neatly
extension Collection {
    func summarize (){
        print("There are \(count) of us")
        for name in self {
            print(name)
        }
    }
}
pythons.summarize()
beatles.summarize()

//we can use other properties of protocol in its extension like this
protocol Anime {
    var availableLanguages: [String] { get set }
    func watch(in language: String)
}
extension Anime {
    func watch(in language: String) {
        if availableLanguages.contains(language) {
            print("Now playing in \(language)")
        } else {
            print("Unrecognized language.")
        }
    }
}
struct Rectangle: Anime{
    var availableLanguages: [String]
   
}
let myRectangle = Rectangle(availableLanguages: ["English","Hindi","French"])
myRectangle.watch(in: "English")


//Protocol extensions can provide default implementations for our own protocol methods. This makes it easy for types to conform to a protocol, and allows a technique called “protocol-oriented programming” – crafting your code around protocols and protocol extensions.


protocol Identifiable {
    var id: String { get set }
    func identify()
}
//We could make every conforming type write their own identify() method, but protocol extensions allow us to provide a default:
extension Identifiable {
    func identify() {
        print("My ID is \(id).")
    }
}
struct User: Identifiable {
    var id: String
}

let twostraws = User(id: "twostraws")
twostraws.identify()




///#Summary
/*
 1. Protocols describe what methods and properties a conforming type must have, but don’t provide the implementations of those methods.
 2. You can build protocols on top of other protocols, similar to classes.
 3. Extensions let you add methods and computed properties to specific types such as Int.
 4. Protocol extensions let you add methods and computed properties to protocols.
 5. Protocol-oriented programming is the practice of designing your app architecture as a series of protocols, then using protocol extensions to provide default method implementations.
 */
