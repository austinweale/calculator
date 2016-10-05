//
//  main.swift
//  calculator
//
//  Created by iGuest on 10/4/16.
//  Copyright © 2016 iGuest. All rights reserved.
//

import Foundation

print("Hello, World!")

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
