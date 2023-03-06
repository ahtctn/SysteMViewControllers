//
//  Car.swift
//  CarRental
//
//  Created by Ahmet Ali ÇETİN on 5.12.2022.
//

import UIKit

class Vehicle: VehicleProtocol, IsElectric {
    var howManyKM: Int = 0
    var name: String = ""
    var model: String = ""
    var howManySeats: Int = 0
    
    var image = UIImage()
    
    func isElectric(year: Int) -> Bool{
        if year < 2010 && howManyKM > 1_000{
            return false
        } else { return true }
    }
    
    init(howManyKM: Int, name: String, model: String, howManySeats: Int, image: UIImage) {
        self.howManyKM = howManyKM
        self.name = name
        self.model = model
        self.howManySeats = howManySeats
        self.image = image
    }
}

class Car: Vehicle {
    func checkElectric(year: Int) -> Bool {
        if name == "Tesla" && name == "tesla" {
            let check = isElectric(year: year)
            return true
        }
        return false
    }
}

class Motobike: Vehicle {
    
}

class Bike: Vehicle {
    
}

protocol IsElectric {
    func isElectric(year: Int) -> Bool
}

protocol VehicleProtocol {
    var name: String { get }
    var model: String { get }
    var howManySeats: Int { get }
    var howManyKM: Int { get }
}

enum WhichVehicle {
    case Car, Motobike, Bike
}
