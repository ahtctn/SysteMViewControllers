import UIKit

//class Game {
//    var score = 0 {
//        didSet{
//            print("Game score = \(score)")
//        }
//    }
//
//    func scoreChanged(_ scoreChanged: Int){
//        score += scoreChanged
//    }
//}
//
//let game = Game()
//game.scoreChanged(20)
//game.scoreChanged(-10)
//print(game.score)
 
class Employee {
    let hours: Int
    
    init(hours: Int) {
        self.hours = hours
    }
    
    fileprivate func printSummary() -> String{
        return "I am working \(hours) hours a day"
    }
}

class Developer: Employee {
    override func printSummary() -> String {
        return "Developers works 100 hours a week."
    }
}

class Manager: Employee {
    override func printSummary() -> String {
        return "Managers works 100 hours a week."
    }
}
//
//let dev = Developer(hours: 123)
//print(dev.printSummary())
//
class Vehicle {
    let isElectric: Bool
    
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible: Bool

    init(isElectric: Bool, isConvertible: Bool){
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}
let tesla = Car(isElectric: true, isConvertible: false)

class User {
    var username = "Anonymous"
    
    func copy() -> User {
        let user = User()
        user.username = username
        return user
    }
}

var user1 = User()
var user2 = user1.copy()
print(user2.username)
user2.username = "Ahmet Ali"
print(user2.username)




