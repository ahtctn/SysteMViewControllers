//
//  ViewController.swift
//  CarRental
//
//  Created by Ahmet Ali ÇETİN on 5.12.2022.
//

import UIKit

class ViewController: UIViewController {
    var vehicles: [Vehicle] = [
        Vehicle(howManyKM: 10_000, name: "Porsche", model: "Cayyane", howManySeats: 2, image: UIImage(systemName: "car")!),
        Vehicle(howManyKM: 2_000, name: "Ford", model: "Focus", howManySeats: 4, image: UIImage(systemName: "car")!)
    ]
    
    @IBOutlet weak var carName: UITextField!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var vehicleImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func searchButtonPressed(_ sender: UIButton) {
        
    }
    
  
    //MARK: - Function
    func chooseCar(){
        
        for vehicle in vehicles{
            
            
        }
    }
}


