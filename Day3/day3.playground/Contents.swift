/*
# Day 3
1. Arithmetic Operators
2. Operator overloading
3. Compound assignment operators
4. Comparison operators
5. Conditions
6. Combining conditions
7. The ternary operator
8. Switch statements
9. Range operators
10. Enum raw values
11. Operators and conditions summary
*/

let firstScore = 10
let secondScore = 20

//Aithmetic operator
let totalScore = firstScore + secondScore
let difference = secondScore-firstScore
let oppositeDiff = firstScore - secondScore
let times = firstScore*secondScore
let division = firstScore/secondScore
let oppDivision = secondScore/firstScore
let modulo = firstScore%3
let test = 2.02 + 2

//Remember, Swift is a type-safe language, which means it won’t let you mix types.
//let str = "my score is" + 45  this will give you error because you are trying to add int and string

//However, you can ovverride the operators to use on same type of data
let myFriends = ["Paul","Sam"] + ["daniel","George"]
let newString = "test" + "1"
//let testing = "test" - "e" won't work
//let testing = false + false // won't work
//let dictionaryTest = ["name":"Rashi"] + ["Second Name":"Jain"] won't work

//compound assignmemnt operator
var score = 20
score += 20
score -= 10
score *= 2
score /= 2
score %= 4

//comparison operator
let firstName = "rashi"
let secondName = "sakshi"
firstName < secondName
firstName != secondName
firstName == secondName
firstName >= secondName

//special case with enum
enum priority :Comparable{
    case high
    case low
    case medium
}
priority.low < priority.high


//conditional if, else if, else
let firstCard = 10
let secondCard = 20
if firstCard >= secondCard{
    print("In the if condition")
}else if firstCard + secondCard == 30 {
    print("in the else if condition")
}else {
    print("no condition worked for me!")
}
//Combining conditional operator with &&(and) and ||(or)
let age1 = 10
let age2 = 21
if age1 < 10 && age2 >= 21 {
    print("Success")
}else {
    print("Failure")
}

if(age1 < 10 || age2 > 20 ) && age2 == 21{
    print("Success")
}else {
    print("Failure")
}

//Ternary Operator condition? run if condition is true : run if condition is false
let height = 220
height <= 200 ?"Height is short":"Height is long"

//Switch Statements
let weather = "sunny"
switch (weather) {
case "rain":
    "Carry an umberella!"
case "sunny":
    "Please wear sunscreen"
case "snow":
    "Please wear snow shoes"
default:
    "Enjoy your day!"
}
 
//Range Operator "..." closed range operator & "..<" half-open range operator
let myBuddies = ["Alex","Maira","John","Smith"]
let favourites = myBuddies[2...]
let justFriends = myBuddies[0..<2]
let passing = 70...100


///#Summary
/*
1. Swift has operators for doing arithmetic and for comparison; they mostly work like you already know.
2. There are compound variants of arithmetic operators that modify their variables in place: +=, -=, and so on.
3. You can use if, else, and else if to run code based on the result of a condition.
4. Swift has a ternary operator that combines a check with true and false code blocks. Although you might see it in other code, I wouldn’t recommend using it yourself.
5. If you have multiple conditions using the same value, it’s often clearer to use switch instead.
6. You can make ranges using ..< and ... depending on whether the last number should be excluded or included.
*/
