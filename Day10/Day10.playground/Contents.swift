import UIKit

/*
 # Day 10
 1. Creating your own classes
 2. Class inheritance
 3. Overriding methods
 4. Final classes
 5. Copying objects
 6. Deinitializers
 7. Mutability
 */

//The first difference between classes and structs is that classes never come with a memberwise initializer.
class Dog {
    var name: String
    var breed : String
    init(name:String,breed:String)
    {
        self.name = name
        self.breed = breed
        
    }
}

let bruno = Dog(name: "Bruno", breed: "poppy")

//class inheritance
class poodle : Dog{
    init(name:String)
    {
        super.init(name: name, breed: "poodle")
    }
}
let myDog  = poodle(name: "Mars")
myDog.breed
myDog.name

//ovveride methods of the parent class in the child class
class Dog1{
    func makeNoise(){
        print("Woof!!")
    }
}
class pugs : Dog1{
//  override  func makeNoise(test:String) {
//print("YIk!!!! \(test)")
//    }
      override  func makeNoise() {
    print("YIk!!!!")
        }
//    we can create new function with the same name as parent class function if we want to pass the paramenter to it.  But without ovveride keyword.
//    func makeNoise(noise:String) {
//  print("YIk!!!! \(noise)")
//      }
}
let myDog2 = pugs()
myDog2.makeNoise()

//final keyword - final classes cannot be inheritted
final class Dog2{
    func makeNoise(){
        print("Woof!!")
    }
}
//this will give an error
//class bruno : Dog2{
//
//}

//copying objects
//The third difference between classes and structs is how they are copied. When you copy a struct, both the original and the copy are different things – changing one won’t change the other. When you copy a class, both the original and the copy point to the same thing, so changing one does change the other.

//reference types
class Singer {
    var name = "Taylor Swift"
}
var singer = Singer()
var singer2 = Singer()
print(singer.name)
var singerCopy = singer
singerCopy.name = "Justin Bieber"
singer2.name = "Bruno Mars"
print(singer.name)
print(singerCopy.name)
print(singer2.name)

//in case of Structs - it work on value types
struct NewSinger {
    var name = "Taylor Swift"
}
let mySinger = NewSinger()
var myNewSinger = mySinger
myNewSinger.name = "Justin"
print(mySinger)
print(myNewSinger)

//deintializer is function when an instance of a class get destroyed

class Data {
    init(){
        print("Calling initializer")
    }
    func sayHello(){
        print("hello everyone!")
    }
    deinit {
        print("destroying the class")
    }
}
for _ in 1...3 {
    let myData = Data()
    myData.sayHello()
}
//Behind the scenes Swift performs something called automatic reference counting, or ARC. ARC tracks how many copies of each class instance exists: every time you take a copy of a class instance Swift adds 1 to its reference count, and every time a copy is destroyed Swift subtracts 1 from its reference count. When the count reaches 0 it means no one refers to the class any more, and Swift will call its deinitializer and destroy the object.

//mutability
//If you have a constant struct with a variable property, that property can’t be changed because the struct itself is constant.
//if you have a constant class with a variable property, that property can be changed

class Dancer {
    var name : String
//this property cannot be changed line 130 will give error
//    let name :String
    init(name:String)
    {
        self.name = name
    }
}
let ed = Dancer(name:"edie")
ed.name = "Ed sheeran"
print(ed.name)

//Mutability
/*:
- Variable classes can have variable properties changed
- Constant classes can have variable properties changed
- Variable structs can have variable properties changed
- Constant structs cannot have variable properties changed
*/

///#Summary
/*
 1. Classes and structs are similar, in that they can both let you create your own types with properties and methods.
 2. One class can inherit from another, and it gains all the properties and methods of the parent class. It’s common to talk about class hierarchies – one class based on another, which itself is based on another.
 3. You can mark a class with the final keyword, which stops other classes from inheriting from it.
 4. Method overriding lets a child class replace a method in its parent class with a new implementation.
 5. When two variables point at the same class instance, they both point at the same piece of memory – changing one changes the other.
 6. Classes can have a deinitializer, which is code that gets run when an instance of the class is destroyed.
 7. Classes don’t enforce constants as strongly as structs – if a property is declared as a variable, it can be changed regardless of how the class instance was created.
 */
