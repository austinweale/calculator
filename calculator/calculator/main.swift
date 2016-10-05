//
//  Austin Weale
//  calculator
//
//

import Foundation


if (CommandLine.arguments.count > 1){
    var args = CommandLine.arguments
    var operation = args[args.count - 1]
    switch operation {
        case "avg":
            var total = args.count - 2
            var commandLineSum = 0
            for i in 1...(args.count - 2){
                commandLineSum += Int(args[i])!
            }
            print("result: \(commandLineSum / total)")
        default:
            print("invalid operation")
    }
} else {
    print("Enter an expression separated by returns:")
    
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
}

