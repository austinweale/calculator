//
//  Austin Weale
//  calculator
//
//

import Foundation

print("Enter an expression separated by returns:")

var first = Int(readLine(strippingNewline: true)!)!

var operand = readLine(strippingNewline: true)!

var second = Int(readLine(strippingNewline: true)!)!

switch operand {
    case "+":
        print(first + second)
    case "-":
        print(first - second)
    case "*":
        print(first * second)
    case "/":
        print(first / second)
    case "%":
        print(first % second)
    default:
        print("not valid")
}
