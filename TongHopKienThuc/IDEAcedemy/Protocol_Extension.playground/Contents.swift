//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//------------------ Protocol trong Swift ------------------
class Animal {
    
}

protocol CanMakeSuond {
    func Sound()
}
protocol CannEat {
    var foodType: String {get set}
    func Eat(foodType: String) -> String
    init(foodType: String)
}
class Dog: Animal,CannEat,CanMakeSuond {
   required init(foodType: String) {
        self.foodType = foodType
    }

     func Eat(foodType: String) -> String {
        return foodType
    }
    var foodType: String = "Thit"
    func Sound() {
        print("Gau Gau")
    }
}

class Cat: Animal,CannEat,CanMakeSuond {
   var foodType: String = "Ca"
    func Eat(foodType: String) -> String {
        return foodType
    }
    required init(foodType: String) {
        self.foodType = foodType
    }

    func Sound() {
        print("Meo Meo")
    }

    
}

class People {
    
}

var myDog = Dog(foodType: "Meat")
myDog.Sound()
myDog.Eat(foodType: "Meat")
