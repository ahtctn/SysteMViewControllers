import UIKit

//class MakeSentence {
//
//    var name: String
//    var surname: String
//    var age: Int
//
//    func makeSentence() -> String{
//        return "It's \(name + surname), I am \(age) years old."
//    }
//
//    init(name: String, surname: String, age: Int) {
//        self.name = name
//        self.surname = surname
//        self.age = age
//    }
//}
//
//var deneme = MakeSentence(name: "Ahmet", surname: "Çetin", age: 23)
//var deneme2 = deneme
//print(deneme2.name)
//deneme.name = "ahmet"
//deneme.surname = "ali"
//deneme.age = 25
//
//print("\(deneme.name + deneme.surname) + \(deneme.age)")
//
//
class User {
    let id: Int

    init(id: Int) {
        self.id = id
        print("Initializng has been started.")
    }

    deinit{
        print("Deinitializing has been started.")
    }
}

var users = [User]()

for i in 1...3 {
    let userId = User(id: i)
    print("User \(userId.id) has accessed to the system.")
    users.append(userId)
}
print("Loop is finished.")
users.removeAll()
print("Array is clear and has \(users.count) element init.")

//class Animal {
//    var legs: Int
//
//    init(legs: Int) {
//        self.legs = legs
//    }
//}
//
//class Dog: Animal {
//    func speak() -> String{
//        return "HAV HAV HAV"
//    }
//
//    override init(legs: Int) {
//        super.init(legs: legs)
//    }
//}
//
//class Corgi: Dog {
//    override func speak() -> String{
//        return "CORG CORG CORG"
//    }
//}
//
//class Poodle: Dog {
//    override func speak() -> String {
//        return "PORG PORG PORG"
//    }
//}
//
//class Cat: Animal {
//    var isTame: Bool
//
//    init(legs: Int, isTame: Bool) {
//        self.isTame = isTame
//        super.init(legs: legs)
//    }
//
//    func speak() -> String {
//        return "Miyavv"
//    }
//}
//
//class Persian: Cat {
//    override func speak() -> String {
//        return("WHROOAAAM")
//    }
//    override init(legs: Int, isTame: Bool) {
//        super.init(legs: legs, isTame: isTame)
//    }
//}
//
//class Lion: Cat {
//    override func speak() -> String {
//        return "HRAORWaw"
//    }
//
//    override init(legs: Int, isTame: Bool) {
//        super.init(legs: legs, isTame: isTame)
//    }
//}

//var lion = Lion(legs: 4, isTame: false)
//var lion2 = Lion(legs: 4, isTame: true)
//print("\(lion.speak())")

//class UserName {
//    var name: String = "Ahmet"
//}
//
//let user = UserName()
//let user2 = user
//let user3 = user
//user.name = "Ali"
//print(user.name)
//print(user2.name)
//print(user3.name)
 
class Hayvanlar {
    var bacakSayisi: Int
    
    init(bacakSayisi: Int) {
        self.bacakSayisi = bacakSayisi
    }
}

class Kopek: Hayvanlar {
    func havla() -> String {
        return "Her köpek farklı şekilde havlar."
    }
    
    override init(bacakSayisi: Int) {
        super.init(bacakSayisi: bacakSayisi)
    }
}

class Kangal: Kopek {
    override func havla() -> String {
        return "Sivasspor Şampiyon!"
    }
}

class CobanKopegi: Kopek {
    override func havla() -> String {
        return "AvAvAv!"
    }
}

class Kedi: Hayvanlar {
    var evcilMi: Bool
    init(evcilMi: Bool, bacakSayisi: Int) {
        self.evcilMi = evcilMi
        super.init(bacakSayisi: bacakSayisi)
    }
}

class Aslan: Kedi {
    override init(evcilMi: Bool, bacakSayisi: Int) {
        super.init(evcilMi: evcilMi, bacakSayisi: bacakSayisi)
    }
}

class Kaplan: Kedi {
    override init(evcilMi: Bool, bacakSayisi: Int) {
        super.init(evcilMi: evcilMi, bacakSayisi: bacakSayisi)
    }
}

var kedi1 = Kedi(evcilMi: false, bacakSayisi: 4)

var evcilMi: String = ""
if kedi1.evcilMi == false {
    evcilMi += "Evcil değildir."
} else {
    evcilMi += "Evcildir."
}

var kangal = Kangal(bacakSayisi: 4)
let cobanKopegi = CobanKopegi(bacakSayisi: 4)

if kangal.havla() == "Sivasspor Şampiyon!" {
    print("Kangal köpeğinin \(kangal.bacakSayisi) bacağı vardır. ve \(kangal.havla()) şeklinde havlar")
}
if cobanKopegi.havla() == "AvAvAv!" {
    print("Çoban köpeğinin \(kangal.bacakSayisi) bacağı vardır. ve \(cobanKopegi.havla()) şeklinde havlar")
}
