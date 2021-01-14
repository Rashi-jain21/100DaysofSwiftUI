/*
 # Day 5
 1. Writing functions
 2. Accepting parameters
 3. Returning values
 4. Parameter labels
 5. Omitting parameter labels
 6. Default parameters
 7. Variadic functions
 8. Writing throwing functions
 9. Running throwing functions
 10. inout parameters
 11. Functions summary
 */

func printMyName (){
    print("Hello, Rashi!")
}
printMyName()

//Function with parameters
func square (number:Int)
{
    let squaredNumber = number * number
    print("The number is: \(number) and the square is: \(squaredNumber)")
}
square(number: 10)

//Function returning a value
func square2(number :Int)->Int{
    return number * number
}
let result = square2(number: 5)
print("my Sqaure number is \(result)")

//parameter with labels
func setAge(for name:String,to value:Int){
    print("set age of \(name) to \(value)")
}
setAge(for: "Paul", to:20)
//we can not use more than one label for one argument

//we can omit the label while calling a fucntion by using "_" as a label
func sayHi(_ name : String){
    print("Heya my friend \(name)")
}

sayHi("Shasha")

//Fucntion with default parameters
func greet(_ name: String, nicely : Bool = true)
{
    if nicely {
        print("Hello \(name)")
    }else
    {
    print("ohh no \(name) again !!")
    }
}
greet("Samantha")
greet("Samantha",nicely: false)

//Variadic functions - which can accepts any count of arguments
func square3(_ numbers:Int...){
    for number in numbers{
        print("the number is: \(number) and the sqaure is : \(number * number)")
    }
}
square3(1,2,3,4,5,6)

//throwing functions
enum passwordError:Error{
    case Obvious
}
func checkPassword(_ password:String) throws -> Bool {
    if password == "password"{
        throw passwordError.Obvious
    }
    return true
}
do {
   var isValid = try checkPassword("password")
    var myResponse = try checkPassword("test")
    print(myResponse)
}catch{
    print("this password is not valid");
}
//inout parameter of a function - when you change it inside a function it will auto matically change outside variable you passed as an argument
// we need to make the variable with var it cann't be constant(let)
func doubleInPlace(number: inout Int){
    number *= 2
}
var myNum = 10
doubleInPlace(number: &myNum)


//func +(leftNumber: Int, rightNumber: Int) -> Int {
//    // code here
//}
//
//func +=(leftNumber: inout Int, rightNumber: Int) {
//    // code here
//}

///#Summary
/*
 1. Functions let us re-use code without repeating ourselves.
 2. Functions can accept parameters – just tell Swift the type of each parameter.
 3. Functions can return values, and again you just specify what type will be sent back. Use tuples if you want to return several things.
 4. You can use different names for parameters externally and internally, or omit the external name entirely.
 5. Parameters can have default values, which helps you write less code when specific values are common.
 6. Variadic functions accept zero or more of a specific parameter, and Swift converts the input to an array.
 7. Functions can throw errors, but you must call them using try and handle errors using catch.
 8. You can use inout to change variables inside a function, but it’s usually better to return a new value.
 */
