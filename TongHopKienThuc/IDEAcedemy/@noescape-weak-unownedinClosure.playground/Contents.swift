//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let getIncreaseClosure: (()->()-> Int) = {
    var number = 0
    return {
        number += 1
        return number
    }
}
// Tham chieu vao Closure Main roi tang dan
 let handelCosure = getIncreaseClosure()
handelCosure()
handelCosure()
// Tham chieu vao Closure Phu. roi tang dan voi gia tri cua Closure Phu.
let otherHandle = handelCosure
otherHandle()
// Tham chieu vao Closure Main
let newHandle = getIncreaseClosure()
newHandle()
otherHandle()






class Pet {
    let name: String
    var handleMakeSound:(()->())?
    init(name: String) {
        self.name = name
    }
    func  makeSound()  {
        print("Hello")
        self.doSomething {[weak self] in
            print("I am \(self?.name)")
        }
    }
    func doSomething(action:@escaping ()->()) {
        self.handleMakeSound = action
        self.handleMakeSound!()
    }
    deinit {
        print("Gia Loc")
    }
}

var pet: Pet? = Pet(name: "mimi")
pet?.makeSound()
pet = nil