/*
 # Day 1
 1. Variables
 2. Strings and integers
 3. Multi-line strings
 4. Doubles and booleans
 5. String interpolation
 6. Constants
 7. Type annotations
 8. Simple types: Summary */


//Create a variable and change it
//Swift automatically typecasts the variable accroding to the value
//They are called variables because they can vary – you can change their values freely.
var str = "Hello, playground"
str = "test2" //str is a variable so we can change the value

var IntegerData = 35;
var myInt = 1
var myDouble = 1.0

var multiLineString = """
I am testing and new
to SwiftUI
"""
var newMultiLineString = """
Here I am trying to remove \
'\n' from the string
"""

//String interpolation
var stringWithInterpolation = "Yeahh!! i scored \(IntegerData)"
//Swift lets you use underscores as thousands separators – they don’t change the number, but they do make it easier to read.

var meaningOfLife = 42
//meaningOfLife = "Forty two" //error: cannot assign value of type 'String' to type 'Int'
var populationn = 8_000_000

let name = "Rashi"
//name = "varun"  this will give us error because name is a constant (we use let instead of var)


/*Type annotations
 Type inference: It refers to the automatic detection of the data type of an expression
 Swift assigns each variable and constant a type based on what value it’s given when it’s created.
 */
let data : String = "testing"
let success : Bool = true
