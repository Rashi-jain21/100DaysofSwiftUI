/*
 # Day 6
 1. Creating basic closures
 2. Accepting parameters in a closure
 3. Returning values from a closure
 4. Closures as parameters
 5. Trailing closure syntax
 */

//you can create a function and assign it to a variable, call that function using that variable, and even pass that function into other functions as parameters.
let driving = {
    print("I can drive a car")
}

driving()

// we can pass arguments to the closure functions
let driving1 = {(speed:Int) in
    print("I was driving the car at the speed of \(speed)km/hr")
}
driving1(20)

let drivingWithReturn = { (speed:Int)->String in
    return "I was driving the car at the speed of \(speed)km/hr"
}
let statement = drivingWithReturn(20)

//we can also create a closure without any argument
let drivingWithoutArgs = { ()->String in
    return "I was driving the car at the very high speed"
}
let statement1 = drivingWithoutArgs()
print(statement1)
//Closure as parameters

func travel(action: ()->Void){
    print("I am travelling to")
    action()
    print("I will be right back")
}
travel(action: driving)

//passing closure as an argument by using trailing closure syntax
func animate(duration:Int,animations:()->Void){
    print("the duration of the animation is \(duration) seconds")
    animations()
}
animate(duration:20){
    print("Fade ot the image")
}
animate(duration: 10, animations: {
    print("Fade out the text")
})
