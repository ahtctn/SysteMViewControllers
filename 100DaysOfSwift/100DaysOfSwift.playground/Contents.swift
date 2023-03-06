import UIKit

let names: [String] = ["Ahmet", "Mehmet", "Müzeyyen"]
let namesCount = names.count

print("sıfırıncı karakter -> \(names[0])\n birinci karakter\(names[1])\n ikinci karakter \(names[2])")

let oddNumbers: [Int] = [2,3,5,7,9,11]
if oddNumbers.isEmpty {
    print("There are no odd numbers in the array")
} else if oddNumbers.contains(5){
    print("5 is an odd number")
} else if (oddNumbers.hashValue != 0) {
    print("what is hash value")
}


struct Employee: Hashable {
    var name: String
    var salary: Int
}

let emp1 = Employee(name: "Steven", salary: 10_000)
let emp2 = Employee(name: "Steve", salary: 10_000)

if emp1.hashValue == emp2.hashValue {
    print("employee1: \(emp1.name) has equal hash values with employee2: \(emp2.name)")
    print("\(emp1.hashValue) -- \(emp2.hashValue)")
} else {
    print("employee1: \(emp1.name) has NOT equal hash values with employee2: \(emp2.name)")
    print("\(emp1.hashValue) -- \(emp2.hashValue)")
}

var myFavMusicians: Set = ["Eminem", "Barış Manço", "2Pac", "Davut Güloğlu"]
print(myFavMusicians)

myFavMusicians.insert("Haluk Levent")

var myName = (name: "Ahmet Ali", surname: "Çetinson")
var myName2 = (name: "Mehmet Salih", surname: "Çetinson")
print("\(myName.name), \(myName.surname)")

if myName.surname == myName2.surname {
    print("Those are the same surnames!")
}

var myDictionary: [String: String] = [
    "name": "ahmet ali",
    "surname": "çetin",
    "age": "23",
    "gender": "male"
]

print(myDictionary.keys)

let results: [String: Int] = [
    "result0": 50,
    "result20": 80,
    "result100": 43
]
let resultValues = results["result1", default: 0]
print("\(resultValues)")

let randomNames: [String] = ["Janet", "James", "Jackson", "Jamie", "Frank", "Abraham"]
var jExist: [String] = []

for randomName in randomNames {
    if randomName.prefix(1) == "J" && randomName.prefix(1) == "j" {
        jExist.append(randomName)
    }
}

enum SocialPlatform : String {
    case twitter = "Elon Musk has that app"
    case instagram = "So many pictures"
    case facebook = "App i never used this year"
    case linkedIn = "Workoholic shit."
}

func myOpinion(on platform: SocialPlatform) {
    print(platform.rawValue)
}

print(myOpinion(on: .linkedIn))

func shareImage(on platform: SocialPlatform){
    switch platform {
    case .facebook:
        print("You should share an image on Facebook.")
    case .instagram:
        print("You should share an image on instagram.")
    case .linkedIn:
        print("You should share an image on linkedIn.")
    case .twitter:
        print("You should share an image on twitter.")
    }
}

print(shareImage(on: .linkedIn))

enum SFSymbols {
    static let location = UIImage(systemName: "mappin.and.ellipse")
    static let repos = UIImage(systemName: "folder")
    static let gists = UIImage(systemName: "text.alignleft")
    static let followers = UIImage(systemName: "heart")
    static let following = UIImage(systemName: "person.2")
}

let myLocaiton: UIImage = SFSymbols.location!
let myRepos: UIImage = SFSymbols.repos!

enum SocialMediaPlatforms {
    case twitter(followers: Int)
    case instagram(followers: Int)
    case youtube(subscribers: Int)
    case linkedIn
}

func advertiseFollowerCount(on platform: SocialMediaPlatforms){
    switch platform {
    case .instagram(let followers) where followers > 10_000:
        print("İşbirliği yapılabilir.")
    case .twitter(let followers) where followers > 2_000:
        print("İş birliği yapılabilir.")
    case .youtube(let subscriber) where subscriber > 1_000_000:
        print("İş birliği yapılabilir")
    case .linkedIn, .youtube, .twitter, .instagram:
        print("İş birliği YAPILAMAZ.")
    }
}

print(advertiseFollowerCount(on: .twitter(followers: 2001 )))

var randomInts: [Int] = []
var randomInts2: [Int] = []
for _ in 1..<25 {
    let randomInt = Int.random(in: 1...100)
    randomInts.append(randomInt)
}

for i in 1...25 {
    let randomInt = Int.random(in: 1...500)
    randomInts2.append(randomInt)
    print("\(i): -> \(randomInt)")
}

let people: [String: String] = [
    "Ahmet Ali": "Çetin",
    "James": "Smith",
    "Kelly  ": "Kapoor"
]

for (name, surname) in people {
    print("Your name is \(name) and surname is \(surname)")
    if name == "Ahmet Ali" {
        print("Ahmet Ali is a fucking genious motherf**er")
    }
}


for (name, _) in people where name == "Ahmet Ali" {
    print("Ahmet Ali is a funcking genious motherf**er and this is the diffirent form of for loop within the if conditions.")
}

var alisTeamScore: Int = 0
var hakansTeamScore: Int = 0
/*
while alisTeamScore <= 21 && hakansTeamScore <= 21 {
    var didAlisTeamsScored: Bool = Bool.random()
    var score = Int.random(in: 1...3)
    
    if didAlisTeamsScored {
        alisTeamScore += score
        print("Ali'nin sayısı \(alisTeamScore)")
    } else {
        hakansTeamScore += score
        print("Hakan' ın sayısı \(hakansTeamScore)")
    }
}

print("Ali: \(alisTeamScore) - Hakan: \(hakansTeamScore )")
*/

repeat {
    var didAlisTeamsScored: Bool = Bool.random()
    var score = Int.random(in: 1...3)
    
    if didAlisTeamsScored {
        alisTeamScore += score
        print("Ali'nin sayısı \(alisTeamScore)")
    } else {
        hakansTeamScore += score
        print("Hakan' ın sayısı \(hakansTeamScore)")
    }
} while alisTeamScore <= 21 && hakansTeamScore <= 21
