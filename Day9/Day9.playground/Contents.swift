import UIKit

/*
 # Day 9
 1. Initializers
 2. Referring to the current instance
 3. Lazy properties
 4. Static properties and methods
 5. Access control
 6. Structs summary
 */

//memberwise initializer of a struct
struct user {
    var username: String
}
var myUser = user(username: "test")
myUser.username

struct user1 {
    var username: String
    init() {
        username="Anonymous"
        print("the username is \(username)")
    }
}
var myUser1 = user1()
myUser1.username = "Rashi"
print("the final user is: \(myUser1)")
// stuct add its own  intitalizer on every struct unless we create one
// 1. all the default value properties of a struct are place in the membership intitializer by default so when we make instance of the struct we have a choice to pass the default value paramter or not.
//for eg:
struct Employee {
    var name: String
    var yearsActive = 0
}

let roslin = Employee(name: "Laura Roslin")
let adama = Employee(name: "William Adama", yearsActive: 45)
//if we want both default membership intializer and custome one then we can do use "extension"
//for eg:
struct data {
    var name:String
    var age = 10
}
extension data {
    init() {
        self.name = "Anonymous"
        print("Creating an anonymous employee…")
    }
}
let data1 = data(name: "Rashi")
let data2 = data(name: "Rashi jain", age: 20)
print(data1.age)
print(data2.age,data2.name)
//self keyword to access the properties of the struct
struct dataa {
    var name:String
    var age = 10
    init() {
        self.name = "Anonymous"
        print("Creating an anonymous employee…")
    }
}
let data3 = dataa()
print(data3.age)

//lazy properties
//As a performance optimization, Swift lets you create some properties only when they are needed.
struct FamilyTree {
    init() {
        print("intializing the family tree")
    }
}
struct Person {
    var name :String
   lazy var familyTree = FamilyTree()
    init(name:String){
        self.name = name
    }
}
var ed = Person(name: "Ed shereen")
//familyTree will initialize now and struct FamilyTree init method will run now because we are using the familyTree property of Person for the first time in our code.
ed.familyTree

//Static properties and methods
struct Student {
    static var studentCount = 0
    var name : String
    init(name:String) {
        self.name = name
        Student.studentCount += 1
    }
}
let ed1 = Student(name:"ED")
let samantha = Student(name: "Samantha")
print(Student.studentCount)

//for private properties swift does not add a default membership intializer
struct personData {
    var id : String
    init(id:String){
        self.id = id
    }
}
let myNewPersonData = personData(id:"12234")
myNewPersonData.id

struct personData1 {
   private var id : String
    init(id:String){
        self.id = id
    }
    func identify() -> String {
           return "My social security number is \(id)"
       }
}
let myNewPersonData1 = personData1(id:"12234")
//myNewPersonData1.id you cannot access it as it is a private property
let response = myNewPersonData1.identify()
print(response)


///#Summary
/*
 1. You can create your own types using structures, which can have their own properties and methods.
 2. You can use stored properties or use computed properties to calculate values on the fly.
 3. If you want to change a property inside a method, you must mark it as mutating.
 4. Initializers are special methods that create structs. You get a memberwise initializer by default, but if you create your own you must give all properties a value.
 5. Use the self constant to refer to the current instance of a struct inside a method.
 6. The lazy keyword tells Swift to create properties only when they are first used.
 7. You can share properties and methods across all instances of a struct using the static keyword.
 8. Access control lets you restrict what code can use properties and methods.
 */
