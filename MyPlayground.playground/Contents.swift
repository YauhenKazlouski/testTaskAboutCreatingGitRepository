import UIKit

func printDescription(description: String) {
    print(description)
}

let helloWorld = "Hello, World!"

printDescription(description: helloWorld)

let printFunc = printDescription(description:)
printFunc(helloWorld)

func plus(arg: Int) {
    print(arg + 1)
}

let someFunc = plus(arg: )
(0...9).forEach{someFunc($0)}

func addition(num1: Int, num2: Int, printFunc: (String) -> Void) {
    let sum = num1 + num2
    printFunc("\(sum)")
}

addition(num1: 1, num2: 2, printFunc: printFunc)

func output(array: [Int], predicate: (Int) -> Bool) {
    for element in array {
        if predicate(element) {
            print(element)
        }
    }
}
func otherOutput(array: [Int], predicate: (Int) -> Bool) {
    array.forEach {
        if predicate($0) {
            print($0)
        }
    }
}

func isEven(number: Int) -> Bool {
    number % 2 == 0 ? true : false
}
func otherIsEven(number: Int) -> Bool {number % 2 == 0}

let isEven = isEven(number:)

func isOdd(number: Int) -> Bool {
    number % 2 > 0 ? true : false
}
func otherIsOdd(number: Int) -> Bool {number % 2 > 0}
let isOdd = isOdd(number:)

let nums = Array(1...10)

output(array: nums, predicate: isOdd)
output(array: nums, predicate: isEven)
