//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Pet {
    var name: String
    init(name: String) {
        self.name = name
    }
    deinit {
            print("Deallloc")
        }
    
}
// Retain Count: So tham chieu toi vung nho'
var myPet:Pet? = Pet(name: "Mimi") // 1
var yourPet:Pet? = myPet   // 2
myPet = nil
yourPet = nil
// Tat ca cac phep gan mac dinh deu la strong: Quyet dinh su ton tai cua tham chieu
// Weak: Tham chieu yeu'
weak var weakPet = myPet

// 2 doi tuong tham chieu den nhau: Retain Cycle. Ca 2 doi thuong tham chieu den nhau deu la Strong. Khong giai phong dc bo nho

class Author {
    weak var book: Book?
    deinit {
        print("Dealloc")
    }
}

class Book {
    var author: Author?
    deinit {
        print("Dealloc")
    }
}

var authorObj: Author? = Author()
authorObj!.book = Book()
authorObj!.book?.author = authorObj


authorObj = nil