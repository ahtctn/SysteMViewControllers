import UIKit

func uniqueLetters(input: String) -> Bool {
    var usedLetters = [Character]()
    
    for letter in input {
        if usedLetters.contains(letter) {
            return false
        }
        usedLetters.append(letter)
    }
    return true
}

print(uniqueLetters(input: "Ahmad"))

func palindrome(input: String) -> Bool{
    var letter = String(input.reversed())
    if letter == input {
        return true
    } else { return false }
}

print(palindrome(input: "adada"))


func singularPlural(input: String) -> Bool{
    if input.hasSuffix("s"){
        return true
    }
    if input == "children" || input == "Children" {
        return true
    }
    return false
}

singularPlural(input: "children")

func reverseString(input: String?) -> String {
    if let input = input {
        let reversed = String(input.reversed())
        return reversed
    } else {
        return "No input."
    }
}

reverseString(input: "Ahmet")

func isogram(input: String) -> Bool {
    var repeatedLetter = [Character]()
    
    for letter in input {
        if repeatedLetter.contains(input){
            return false
        }
        repeatedLetter.append(letter)
    }
    return true
}

isogram(input: "ahmeat")

struct Guests {
    var name: String
    var country: String?
}

var guestList: [Guests] = [
    Guests(name: "Lisa", country: "US"),
    Guests(name: "Hans", country: "Germany"),
    Guests(name: "Mahmood")
]

func guestLetters(to guest: Guests) -> String {
    guard let countryName = guest.country else {
        return "Hello, my name is \(guest.name)"
    }
    return "My name is \(guest.name) and I am from \(countryName)"
}

for guest in guestList {
    print(guestLetters(to: guest))
}

func factorialNubmers(input: Int?) -> Int {
    var multiplied: Int = 1
    
    if input != nil && input == 0 {
        return 1
    }
    
    if let input = input {
        for i in 1...input {
            multiplied *= i
        }
        return multiplied
    }else {
        return 0
    }
}

factorialNubmers(input: 5)


func numberOfDigits(input: Int?) -> Int {
    var numDigits: Int = 0
    if input == 0 && input != nil {
        return 1
    }
    if var input = input {
        while input != 0 {
            input /= 10
            numDigits += 1
        }
        return numDigits
    } else {
        return 0
    }
    
    
}
print(numberOfDigits(input: 128_000_000_000))

func ascendingNumber(num: Int?) -> Int {
    let digitNums = numberOfDigits(input: num)
    if let num = num {
        for i in 1...digitNums {
            
        }
    } else {
        return 0
    }
}
