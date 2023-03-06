import UIKit

var students = ["Ahmet Ali": "DPU", "Erkan": "DPU", "Tuğba": "DPU", "İncilay": "İKÇU"]

func printStudentInfo0(keyName: String){
    if let value = students[keyName] {
        print("if let \(keyName) is \(value)")
    } else {
        print("no students found.")
    }
}
printStudentInfo0(keyName: "Ahmet Ali")

func printStudentValue1(key keyName: String) -> String {
    guard let value = students[keyName] else {
        return "no students found."
    }
    return "guard let key value is \(keyName) and value is \(value)"
}

printStudentValue1(key: "Ahmet Ali")

func printStudentValue2(key keyName: String) -> String {
    let optionalValue = students[keyName]
    
    switch optionalValue {
    case .none:
        return "no students found"
    default:
        return "Optional value is \(keyName) and default value is \(optionalValue!)"
    }
}

printStudentValue2(key: "Tuğba")

var optionalBindings: [String: [String: String]] = [
    "student0": ["Ahmet Ali": "Çetin"],
    "student1": ["Erkan": "Sevim"]
]

let firstinitial0 = optionalBindings["student0"]?["Ahmet Ali"]?.hasPrefix("Ç")
print("first initial evaluation: \(firstinitial0!)")

struct Vehicle {
    let name: String
    let model: String
    let wheels: Int
    let isElectric: Bool?
}

let myVehicles: [Vehicle] = [
    Vehicle(name: "Ford", model: "Focus", wheels: 4, isElectric: false),
    Vehicle(name: "Renault", model: "Spring", wheels: 4, isElectric: false),
    Vehicle(name: "Tesla", model: "ModelX", wheels: 4, isElectric: true),
    Vehicle(name: "Vespa", model: "RX0", wheels: 0, isElectric: nil),
    Vehicle(name: "Arçelik", model: "AR", wheels: 3, isElectric: nil)
]

func electricCheck(vehicle: Vehicle) -> String {
    guard vehicle.isElectric != nil else {
        return "There are no value \(vehicle.name) is electric vehicle or not."
    }
    
    if vehicle.isElectric == true{
        return "\(vehicle.name) \(vehicle.model) is an electric vehicle."
    } else {
        return "\(vehicle.name) \(vehicle.model) is not an electric vehicle."
    }
}

for vehicle in myVehicles {
    print(electricCheck(vehicle: vehicle))
}

struct Customers {
    let name: String
    let earnMoney: Int?
    let totalVisitCount: Int?
}

let customers: [Customers] = [
    Customers(name: "Ahmet Ali Çetin", earnMoney: 10_000, totalVisitCount: 6),
    Customers(name: "Erjan Selit", earnMoney: nil, totalVisitCount: 4),
    Customers(name: "Nergis Çetin", earnMoney: 27_000, totalVisitCount: nil),
    Customers(name: "Nurgül Duran", earnMoney: nil, totalVisitCount: nil)
]

func checkOptionals(customer: Customers) -> String{
    guard let earnMoney = customer.earnMoney, let customerVisitCount = customer.totalVisitCount else {
        if customer.totalVisitCount != nil && customer.earnMoney == nil{
            return "There are no value about earning money datas."
        } else if customer.earnMoney != nil && customer.totalVisitCount == nil{
            return "There are no value about total visit count"
        }
        return "There are no value about total visit count and earn money"
    }
    return "\(customer.name) is visited \(customerVisitCount)(s) and we earned \(earnMoney)₺."
}

for customer in customers {
    print(checkOptionals(customer: customer))
}

struct CoffeeShop {
    let name: String
    let price: String?
    let isHot: Bool?
}

let products: [CoffeeShop] = [
    CoffeeShop(name: "White Chocolate Mocha", price: "38₺", isHot: true),
    CoffeeShop(name: "Turkish Coffe", price: nil, isHot: nil),
    CoffeeShop(name: "Espresso", price: nil, isHot: true),
    CoffeeShop(name: "Americano", price: "29₺", isHot: nil)
]

func checkCoffeDatas(coffee: CoffeeShop) -> String{
    if let price = coffee.price, let isHot = coffee.isHot {
        if isHot == true {
            return "\(coffee.name) is \(price) and it is hot."
        } else {
            return "\(coffee.name) is \(price) and it is not hot."
        }
    } else {
        if coffee.price != nil && coffee.isHot == nil {
            return "There are no value about \(coffee.name)'s hot or not."
        } else if coffee.price == nil && coffee.isHot != nil {
            return "There are no value about \(coffee.name)'s price"
        }
        return "There are no value about \(coffee.name) isHot or price"
    }
}

for product in products {
    print(checkCoffeDatas(coffee: product))
}
