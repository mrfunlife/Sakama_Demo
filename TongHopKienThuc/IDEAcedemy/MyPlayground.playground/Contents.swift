//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/////////  I.    Array - Mang Trong Swift ////////
var arrayString: [String] = ["Iphone","Watch","Ipad","Macbook","Apple TV"]
arrayString[3]
for i in 0..<arrayString.count {
    print(arrayString[i])
}

for item in arrayString {
    print(item)
}

arrayString.append("Iphone plus")
print(arrayString)

arrayString.insert("Iphone 6", at: 0)
print(arrayString)

arrayString.remove(at: 0)
print(arrayString)

/////////  II.    Dictionary Trong Swift ////////

var dict1: [String: String] = ["apple": "Iphone", "samsung":"Note 7", "window":"Lumia 1520"]
dict1["apple"]

var dict2: [String: Int] = ["one": 1, "two": 2, "three": 3]
dict2["one"]
dict2["two"]

var dict3: [String: AnyObject] = ["red": "maudo" as AnyObject,"one": 1 as AnyObject, "ok":"hello" as AnyObject]

for (key, val) in dict2 {
    print(key)
    print(val)
}

dict1["goodbye"] = "Tam Biet Em"
print(dict1)
dict1["apple"] = "Done"
print(dict1)
dict1.removeValue(forKey: "apple")
print(dict1)


/////////// III. Funtion trong Swift //////////

var so1: Int = 10
var so2: Int = 20

func Cong(){
    let tong  = so1 + so2
    print(tong)
}

func Tru(soA: Int, SoB: Int) {
    var hieu = soA - SoB
    print(hieu)
}

Cong()
Tru(soA:  so2, SoB: so1)

func Nhan() -> Int {
    let nhan = so1 * so2
    return nhan
}
Nhan()

func chia(soChia: Int, soBiChia: Int) -> Int {
    return soChia/soBiChia
}

chia(soChia: so2, soBiChia: so1)



/////////// III. Closure tronng Swift //////////

let myFirstClosure = { () -> Void in
    print("My First Closure")
}

let myNumber = { (number: Int) -> Int in
        return number + 10
}
myNumber(7)

({ (name: String) -> String in
    print(name)
    return name + " " + " Dong Gia Loc"
})("Name: ")

var number:(Int, Int) -> (Int) = {
    return $0 + $1
}
number(10,1)
var closure:(String) -> Void?

closure = {value in
    print(value)
}
// Dung lam tham so truyen vao cho Func
func TestClosure(name: String, myClosure:(String)->Void) {
    print("Test")
    myClosure(name)
}
TestClosure(name: "GiaLoc", myClosure: {(name) -> Void in print(name)})
TestClosure(name: "IDE") { (ten) in
    print(ten)
    print("Dong Gia Loc")
}


/////////// IV. Enum tronng Swift //////////
enum Gender {
    case Boy
    case Girl
}
var myGender: Gender = Gender.Girl
switch myGender {
case Gender.Boy:
    print("Im' Boy")
case Gender.Girl:
    print("Im' Girl")
default:
    break
}

//enum DayWeek {
//    case Monday, TuesDay, Wednesday, Thursday, Friday, Saturday, Sunday
//}
//
//var day: DayWeek = DayWeek.Wednesday
//switch  day {
//case DayWeek.Monday:
//    print("Monday")
//case DayWeek.TuesDay:
//    print("TuesDay")
//case .Wednesday, . Thursday:
//    print("Wednesday, Thursday")
//default:
//    print("Other Day")
//}

enum DayWeek:Int {
    case Monday = 1, TuesDay, Wednesday, Thursday, Friday, Saturday, Sunday
}

var day: DayWeek = DayWeek.init(rawValue: 2)!
switch  day {
case DayWeek.Monday:
    print("Monday")
case DayWeek.TuesDay:
    print("TuesDay")
case .Wednesday, . Thursday:
    print("Wednesday, Thursday")
default:
    print("Other Day")
}

enum Answer {
    case Yes
    case No(String, String, String)
}
var ans = Answer.No("aaa", "bbb", "ccc")
switch ans {
case Answer.Yes:
    print ("Ok")
case Answer.No(let a, let b, let c):
    print(a,b,c)
default:
    <#code#>
}


/////////// V. Struct tronng Swift //////////

// Tao ra 1 kieu du lieu moi co chua cac kieu du lieu co ban ben trong

struct People {
    var name: String
    var age: Int
    var job: String
    func Learn(){
        print("Learn English")
    }
    mutating func ChangeJob(job:String){
        self.job  = job
    }
}
var mySelf: People = People(name: "Lam", age: 22, job: "Nhan Vien" )
mySelf.name
mySelf.age
mySelf.Learn()
mySelf.ChangeJob(job: "Doctor")
print(mySelf.job)

//struct Pet {
//    var name: String
//    var age: Int
//}
//var dog = Pet(name: "lulu",age: 1)
//var myPet = dog
//myPet.name = "kiki"
//myPet.age = 10
//// Tinh chat copy, neu bien Copy thay doi gia tri, thi bien dau van giu nguyen gia tri
//print(dog.name)
//print(myPet.name)

/////////// VI. Class tronng Swift //////////

class Person {
    var name: String?
    var age: Int?
    
    init(name:String,age:Int) {
        self.name = name
        self.age = age
    }
    init(){
    }
    
    func AfterOfYear(){
    age = age! + 1
    }
}

// Tinh ke thua
var person:Person = Person()
person.name = "GiaLoc"
person.age = 10
print("Ten: \(person.name!) + Tuoi:  \(person.age!)")

class Student: Person {
    var msv: String?
    var truong: String?
    override func AfterOfYear() {
        super.AfterOfYear()
        truong = truong! + " Vip"
    }
  
}

var studentA: Student = Student()
studentA.name = "Nguyen Van A"
studentA.age = 18
studentA.truong = "Mo Dia Chat"
studentA.msv = "0123455"
studentA.AfterOfYear()
print(studentA.age!)
print(studentA.truong!)

// Tinh tham chieu
class Animal {
    var name: String?
    var age: Int?
}

var dog: Animal = Animal()
dog.name = "Beo"
dog.age = 1

var myDog = dog
myDog.name = "Kiki"
print(myDog.name!)
print(dog.name!)

//Tinh da hinh:
class People1 {
    var name1: String = "Lam"
    func SayHello(){
        print("Hello, I'm \(name1)")
    }
}

class Student1: People1 {
    var school: String = "IDE Academy"
    override func SayHello() {
        print("Hello, I'm a student, I am learning at \(school)")
    }
}

func PrintSayHelllo(p: People1) {
    p.SayHello()
}
var people1: People1 = People1()
PrintSayHelllo(p: people1)

var student1: Student1 = Student1()
PrintSayHelllo(p: student1)

// Ham khoi tao init
// Duoc dung de khoi tao cac gia cho cac thuoc tinh cho Class or Struct
// Designated va Convenience

class People2 {
    var name2: String?
    init(name: String) {
        self.name2 = name
        print("Ten: \(name2!)")
    }
    convenience init (){ // goi ve designated
        self.init(name: "")
        self.name2 = "VIP"
    }
    
//    convenience init(name: String){
//        self.init()
//    }
}
var p2: People2 = People2()
p2.name2

var people2: People2 = People2(name: "Dong Gia")

class Strudent2 {
    var school2: String
    init(school: String) {
        self.school2 = school
    }
}
struct Animal2 {
    var name: String
    init() {
        print("Khoi Tao Gia Tri")
        self.name = "Meo"
    }
    
    init(name: String) {
        self.name = name
    }
}

var pet2: Animal2 = Animal2()
var pet21: Animal2 = Animal2(name: "Meo")


