//
//  Austin Weale
//  calculator
//
//

import Foundation

class OperatorHelp {
    func average(args: [String]) {
        let total = args.count - 2
        var commandLineSum = 0
        for i in 1...(args.count - 2){
            commandLineSum += Int(args[i])!
        }
        print("result: \(commandLineSum / total)")
    }
}


if (CommandLine.arguments.count > 1){
    var arguments = CommandLine.arguments
    var operation = arguments[arguments.count - 1]
    let operatorHelp = OperatorHelp()
    switch operation {
        case "avg":
            operatorHelp.average(args: arguments)
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


