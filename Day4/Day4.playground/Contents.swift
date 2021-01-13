
/*
 # Day 1
 1. For loops
 2. While loops
 3. Repeat loops
 4. Exiting loops
 5. Exiting multiple loops
 6. Skipping items
 7. Infinite loops
 8. Looping summary
*/
let numbers = 1...4
for number in numbers {
    print("The number is \(number)")
}

let arr = ["paul","sean","John"]
for friends in arr {
    print("my friend is : \(friends)")
}
 //If you donot want to access the value of the array then use "_" instead of a variable like number or friends
for _ in 1...3{
    print("I am not using the value")
}

//while loop
var numb = 5
while numb > 0{
    print(numb)
    numb -= 1
}

//Repeat Loop
var data = 4
repeat{
    print("data is:\(data)");
    data -= 1
}while data != 0

//Shuffle example with while and repeat loops
var numberss = [1, 2, 3, 4, 5]
var random = numbers.shuffled()
while random == numberss{
    random = numberss.shuffled()
}

let newNumbers = [1, 2, 3, 4, 5]
var random1: [Int]

repeat {
    random1 = newNumbers.shuffled()
} while random1 == newNumbers

//loop exiting
var myLuckNumber = 10
while myLuckNumber > 0 {
    if myLuckNumber == 4
    {
        print("yeah i got my lucky number \(myLuckNumber)")
        break
        
    }
    myLuckNumber -= 1
}

//Exiting from nested loop

let options = ["up","down","left","right"]
let solutions = ["up","right","up"]
outerLoop : for option1 in options{
    for option2 in options {
        for option3 in options {
            if [option1,option2,option3]==solutions
            {
                print("Yeah we got the solution")
                break outerLoop
            }
        }
    }
}
// Continue for skiping item in loop
for i in 1...10 {
    if i%2 == 0 {
        continue
    }
    print("the odd number are: \(i)")
}
var counter = 0

while true {
    print(" ")
    counter += 1

    if counter == 273 {
        break
    }
}
// Infinite loop
//while true {
//    print("this is an infinite loop")
//}










///#Summary
/*
1. Loops let us repeat code until a condition is false.
2. The most common loop is for, which assigns each item inside the loop to a temporary constant.
3. If you don’t need the temporary constant that for loops give you, use an underscore instead so Swift can skip that work.
4. There are while loops, which you provide with an explicit condition to check.
5. Although they are similar to while loops, repeat loops always run the body of their loop at least once.
6. You can exit a single loop using break, but if you have nested loops you need to use break followed by whatever label you placed before your outer loop.
7. You can skip items in a loop using continue.
8. Infinite loops don’t end until you ask them to, and are made using while true. Make sure you have a condition somewhere to end your infinite loops!
 */
