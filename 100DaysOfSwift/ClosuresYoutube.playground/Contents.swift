import UIKit

func doImportantWork( work1: () -> (), work2: () -> (), work3: () -> ()) {
    print("work1- print1")
    work1()
    print("work2- print2")
    work2()
    print("work3- print3")
    work3()
}

doImportantWork {
    let names = ["Ahmet", "Ali", "Çetin"]
    for name in names {
        print(name)
    }
} work2: {
    let numbers = [0,1,2,3,4,5,6,7,8,9]
    var ciftSayilar = [Int]()
    for number in numbers {
        if number % 2 == 0{
            ciftSayilar.append(number)
        }
        print(ciftSayilar)
    }
} work3: {
    let animals = ["Zebra", "Monkey", "Horse", "Elephant"]
    for animal in animals {
        let animalsUppercased = animal.uppercased()
        print(animalsUppercased)
    }
}

