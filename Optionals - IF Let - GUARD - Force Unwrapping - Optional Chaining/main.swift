//
//  main.swift
//  Optionals - IF Let - GUARD - Force Unwrapping - Optional Chaining
//
//  Created by Adwait Barkale on 31/07/20.
//  Copyright © 2020 Adwait Barkale. All rights reserved.
//

import Foundation

var optionalNumber: Int? // Can be nil or can contain Value
optionalNumber = 24

//MARK:- IF LET - like if else, if number is nil execute else block, not nil execute if block
if let number = optionalNumber{
    print("I have a Value = \(number)")
}else{
    print("Don't Have a Value Contain's NIL")
}

//MARK:- GUARD - Check if number is nil ? exit immediately : Continue with Function Flow
func getSquare(optionalNumber num:Int?){
    
    guard let number = num else{
        print("Exited Function due to nil value")
        return
    }
    print("Square of Number is = \(number * number)")
}
getSquare(optionalNumber: nil)
getSquare(optionalNumber: 20)

//MARK:- FORCE UNWRAPPING - If number is Nil app would Crash(Not a Good Practice)
let ForceUnwrappedNumber = optionalNumber!

//MARK:- OPTIONAL CHAINING - when object's Properties Values can be Nil

struct Device{
    
    var type: String?
    var price: Float?
    var color: String?
    
}

var myPhone: Device? //myPhone is Reference of Device Struct that is going to hold reference of any object/Instance
//We have made this reference optional so that even if it is not initialized,app won't crash
//In option chaining, below line, Now since we are assigning the value of optional object hence devicePrice also becomes optional
myPhone = Device(type: "iPhone", price: nil, color: "Dark Black")
let devicePice = myPhone?.price
let totalPrice = (devicePice ?? 0.0) + 8.99
//OR
if let devicePrice = devicePice{
    print("Total Price = \(devicePrice + 8.99)")
}
//print(totalPrice)


