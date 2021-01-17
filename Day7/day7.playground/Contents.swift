
/*
 # Day 7
 1. Using closures as parameters when they accept parameters
 2. Using closures as parameters when they return values
 3. Shorthand parameter names
 4. Closures with multiple parameters
 5. Returning closures from functions
 6. Capturing values
 7. Closures summary
 */

//Using closures as parameters when they accept parameters
func travel(action : (String)-> Void){
    print("I am gettin ready to go!")
    action("India")
    print("Here I come!")
}
travel { ( place : String ) in
    print("I am going the visit \(place)")
}


//closures with return values as parameters to a function
func travel1(action:(String)->String){
    print("I am getting ready to go.")
    let destination = action("London")
    print("The statement is: \(destination)")
    print("Here I come")
}
travel1{ (place:String)->String in
    return "I am travelling to: \(place)"
}
//reduce function in Swift work like this only
let numbers = [10,20,30]
func reduce (_ values:[Int], using closure: (Int,Int)->Int)->Int{
    var current = values[0]

        // loop over all the values in the array, counting from index 1 onwards
        for value in values[1...] {
            // call our closure with the current value and the array element, assigning its result to our current value
            current = closure(current, value)
        }

        // send back the final current value
        return current
}

let sum = reduce(numbers){(number1:Int,number2: Int)->Int in
    return number1 + number2
}
print(sum)

//Shorthand of a closure
travel1{ place in
    return "I am going to \(place)"
}
travel1{
     "I am going to \($0)"
}

//Closure with multiple parameters
func travel(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}
travel {
    "I'm going to \($0) at \($1) miles per hour."
}
//return closure from a function
func travel3()->(String)->Void{
    return {
        print("I am going to \($0)")
    }
}
let result = travel3()
result("Paris")
let result2 = travel3()("Amsterdam")

//Capturing values
func makeRandomNumberGenerator()->()->Int {
    var previousNumber = 0
    
    return {
        var newNumber:Int
        repeat{
            newNumber = Int.random(in: 1...10)
        }while newNumber == previousNumber
        previousNumber = newNumber
        return newNumber
    }
}
let generator = makeRandomNumberGenerator()
for _ in 1...10 {
    print(generator())
}


///#Summary
/*
 1. You can assign closures to variables, then call them later on.
 2. Closures can accept parameters and return values, like regular functions.
 3. You can pass closures into functions as parameters, and those closures can have parameters of their own and a return value.
 4. If the last parameter to your function is a closure, you can use trailing closure syntax.
 5. Swift automatically provides shorthand parameter names like $0 and $1, but not everyone uses them.
 6. If you use external values inside your closures, they will be captured so the closure can refer to them later.
 */
