//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
//------------------ Extension trong Swift ------------------

protocol CanMakeSuond {
    func Sound()
}

class People {
    
}
extension People: CanMakeSuond {
    func Sound() {
        print("Oh My God")
    }
}

var mySelf: People = People()
mySelf.Sound()

extension Double {
    var km: Double {
        return self/1000
    }
    var m: Double {
        return self
    }
    var cm: Double{
        return self * 100
    }
    var nm : Double {
        return self * 1000
    }
    var ft: Double {
        return self * 3.2884
    }
}

let oneMetter: Double = 1
oneMetter.cm
oneMetter.km
