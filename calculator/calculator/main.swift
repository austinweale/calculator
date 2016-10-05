//
//  Austin Weale
//  calculator
//
//

import Foundation

print("Enter an expression separated by returns:")

for i in 1...(CommandLine.arguments.count - 1) {
    print(CommandLine.arguments[i])
}


var first = Int(readLine(strippingNewline: true)!)!

var operand = readLine(strippingNewline: true)!

var second = Int(readLine(strippingNewline: true)!)!

switch operand {
    case "+":
        print("result: \(first + second)")
    case "-":
        print("result: \(first - second)")
    case "*":
        print("result: \(first * second)")
    case "/":
        print("result: \(first / second)")
    case "%":
        print("result: \(first % second)")
    default:
        print("not valid input")
}

