//
//  Austin Weale
//  calculator
//
//

import Foundation


//returns the average of the command-line arguments
//assumes first arg is the program name and the last arg is not used
func average(args: [String]) {
    let total = args.count - 2
    var commandLineSum = 0
    for i in 1...(args.count - 2){
        commandLineSum += Int(args[i])!
    }

    print("result: \(commandLineSum / total)")
}

//returns the factorial of the passed-in integer
func factorial(num: Int) -> Int{
    if num == 1 {
        return 1
    }else{
        return num * factorial(num: num - 1)
    }
}


if (CommandLine.arguments.count > 1){
    var arguments = CommandLine.arguments
    var operation = arguments[arguments.count - 1]
    switch operation {
        case "avg":
            average(args: arguments)
        case "count":
            print("result: \(arguments.count - 2)")
        case "fact":
            print("result: \( factorial(num: Int(arguments[1])!) )")
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


