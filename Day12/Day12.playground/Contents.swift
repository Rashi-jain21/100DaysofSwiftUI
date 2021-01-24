import UIKit

/*
 # Day 12
 1. Handling missing data
 2. Unwrapping optionals
 3. Unwrapping with guard
 4. Force unwrapping
 5. Implicitly unwrapped optionals
 6. Nil coalescing
 7. Optional chaining
 8. Optional try
 9. Failable initializers
 10. Typecasting
 */

//optionals
var age : Int? = nil
age = 38

//unrapping optional
if let myage = age {
    print("My age is \(myage)")
}else {
    print("unknown")
}

//error you cannot use optional parameters inside if let
//let menuItems: [String]? = ["Pizza", "Pasta"]
//if let items = menuItems {
//    print("There are \(menuItems.count) items to choose from.")
//}
 
//unwrapping with guard let
//guard must have a return keyword at the end otherwise swift won't compile the code
// we cannot use guard let or iflet if there is not optional parameter.
func greeting(_ name: String?){
    guard let unwrapped = name else {
        print("Please provide a valid name");
        return
    }
    print("Hello,\(unwrapped)")
}
greeting(nil)
greeting("Raashhi")

//force unwrapping using crash operator
let str = "4dfdf"
//this will try to convert the str to the Int but it will be not a valid number so it will save the value nill to myNumber
let myNumber = Int(str)
// this code will crash because we denied here to make it a nill by using !
//let myNumber2 = Int(str)!
myNumber

//Implicit optional values
//implicitly unwrapped optionals might contain a value or they might be nil. However, unlike regular optionals you don’t need to unwrap them in order to use them: you can use them as if they weren’t optional at all.
// we can use them without using if let or guard let
//but at the time of the usage of the variable if it is still nil then swift will crash
let agee: Int! = nil

//Nil Colescing
func user(id: Int)-> String? {
    if id==1 {
        return "This is a valid id"
    }else {
        return nil
    }
}
let myUser = user(id: 15) ?? "Anonymous"
myUser
// chaining is also possible
//let savedData = first() ?? second() ?? ""


//optional chaining
let names = ["Vincent":"Van gogh","Barney":"barney Stuart","Pablo":"Picasso","Claude":"Monet"]
let surname = names["Vincent"]?.first?.uppercased() ?? "?"
print(surname)

//optional try
enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

//The first is try?, and changes throwing functions into functions that return an optional. If the function throws an error you’ll be sent nil as the result, otherwise you’ll get the return value wrapped as an optional.
//Using try? we can run checkPassword() like this:

if let result = try? checkPassword("password"){
    print("result is: \(result)")
}else {
    print("Error")
}

//The other alternative is try!, which you can use when you know for sure that the function will not fail. If the function does throw an error, your code will crash.
//
//Using try! we can rewrite the code to this:
try! checkPassword("skirt")
//try! checkPassword("password") ERROR
print("OK!")

//Failable intializers
struct person {
    var id : String
    init?(id: String){
        if id.count == 7 {
            self.id = id
        }else {
            return nil
        }
    }
}
let myPerson = person(id: "Rashija")
myPerson?.id
let myPerson2 = person(id: "Rashij")
myPerson2?.id

//TypeCasting
class Animal { }
class Fish: Animal { }

class Dog: Animal {
    func makeNoise() {
        print("Woof!")
    }
}
let pets = [Fish(), Dog(), Fish(), Dog()]
for pet in pets {
    if let dog = pet as? Dog {
        dog.makeNoise()
    }else {
        print("Not a dog!")
    }
}


///#Summary
/*
 1. Optionals let us represent the absence of a value in a clear and unambiguous way.
 2. Swift won’t let us use optionals without unwrapping them, either using if let or using guard let.
 3. You can force unwrap optionals with an exclamation mark, but if you try to force unwrap nil your code will crash.
 4. Implicitly unwrapped optionals don’t have the safety checks of regular optionals.
 5. You can use nil coalescing to unwrap an optional and provide a default value if there was nothing inside.
 6. Optional chaining lets us write code to manipulate an optional, but if the optional turns out to be empty the code is ignored.
 7. You can use try? to convert a throwing function into an optional return value, or try! to crash if an error is thrown.
 8. If you need your initializer to fail when it’s given bad input, use init?() to make a failable initializer.
 9. You can use typecasting to convert one type of object to another.
 */
