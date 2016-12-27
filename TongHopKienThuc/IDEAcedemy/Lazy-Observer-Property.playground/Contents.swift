//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// Property
struct Temperature{
    var celsius: Double
    var fahrenheit: Double {
        get{
            return celsius * 9 / 5 + 32
        }set{
            celsius = (newValue - 32) * 5 / 9
        }
    }
}

var temp = Temperature(celsius: 30)
temp.fahrenheit
temp.fahrenheit = 90
temp.celsius

// Lazy Property

struct Person{
    var firstName: String
    var lastName: String
    var fullName: String{
        return "\(firstName) \(lastName)"
    }
    
    init(firstName: String, lastName: String){
        self.firstName = firstName
        self.lastName = lastName

    }
}
class House {
    // Lazy: Khi nao minh dung` thi no moi chay. Binh thuong no se khong chay.
    lazy var owner = Person(firstName: "Dong", lastName: "Loc")
    // Khong truy can thi se khong gian gia tri, chayj 1 lan duy nhat xong dong' lai
    let address = "Sao Hoa"
    let temp2 = Temperature(celsius: 20)
}

var myHoure = House()
myHoure.address
myHoure.owner

// Observers
// WillSet: Khi gia tri chuan bi set vao thi
// DidSet: Gia tri da gan roi thi nhay vao

struct JobCenter {
    var jobs = ["Cong Ty A Can Web Develor", "Cong Ty B Can Android Develop"] {
        // Mang or bien no duoc thay doi gia tri thi no se phat sinh su kien trong WillSet or Didset
        willSet {
            print("Chuan bi thong bao cho cac ban da dang ky")
        }
        didSet {
            for person in self.people {
                print("Thong bao jobs cho \(person.fullName)")
            }
            print("Da Thong Bao Xon")
        }
    }
    var people = [
        Person(firstName: "Viet",lastName: "Tran"),
        Person(firstName:"Ti",lastName: "Nguyen"),
        Person(firstName: "Teo",lastName: "Pham")
    ]
}

var TopDev = JobCenter()
TopDev.jobs.append("Cong Ty C can Java Developer")
