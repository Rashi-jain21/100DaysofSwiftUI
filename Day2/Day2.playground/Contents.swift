var str = "Hello, playground"
 let remo = "Remo paul"
let titan = "titan harrison"
let diana = "Diana penty"

//Array
let rockstars = [remo, titan, diana];
rockstars[2]
//Caution : If we try to use index which is not present in the array then swift will crash for eg.
// rockstats[5] will crash
// sets
let myData = Set([1,2,3]);
let newData = Set([1,2,3,4,4,3]); //no duplicate values allowed

//Tuples
//1. you cannot add or move item from a tuple
//2.you cannot change the type of value of an item in a tuple.
//3. you can access the item with name or index but swift allow you read  name or index which does not exists in that tuple
let myTuple = (name:"rashi",lastname:"jain")
myTuple.name
myTuple.1

//Dictionaries - same as array but instead of having numeric index we can use the key and set their values
let height = [
    "Ed sheeran" :1.73,
    "Taylor Swift":1.72
]
height["Ed sheeran"]
//Dictionary won't give error message if we try to access the key which is not present in that. Rather it will provide "nil" or we can set a default value for that.
height["paul"]
height["paul",default:0]
//height[0] we cannot access the dictionaries with index
 
//Creating Empty collections (Dictionaries, arrays, sets etc)
 var arr = [Int]()
var myArr = Array<Int>()

//Dictionary
var myDict = Dictionary<String,String>()
var newDict = [String:Int]()

//Sets
var mySet = Set<String>()

//Enum
//if you want to use same value at various places you can put that in an enum
enum result {
    case Success
    case Failure
}
let result1 = result.Failure
//enums can also store associated values attached to each case. This lets you attach additional information to your enums so they can represent more nuanced data.
enum activity {
        case bored
    case singing(volume:Int)
    case playing(type:String)
}
let myLatestActivity = activity.playing(type: "football")

//each item of enum has a raw value start from 0 . but we can change that.
enum planet :Int {
    case mercury = 1
    case venus
    case earth
    case mars
}
//let myPlanet = planet(rawValue:2) result will be "earth" with default raw value i.e. 0
let myPlanet = planet(rawValue: 3)
