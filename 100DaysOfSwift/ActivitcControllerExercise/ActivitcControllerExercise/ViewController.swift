//
//  ViewController.swift
//  ActivitcControllerExercise
//
//  Created by Ahmet Ali ÇETİN on 23.12.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var shareButton: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onShareTapped(){
        guard let text = textField.text else {
            print("No text field found")
            return
        }
        
        let activityController = UIActivityViewController(activityItems: [text], applicationActivities: nil)
        present(activityController, animated: true)
        
    }


}

