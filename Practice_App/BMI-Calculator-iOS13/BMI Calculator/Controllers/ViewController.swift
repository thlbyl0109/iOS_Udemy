//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // ---------- //
    // Properties //
    // ---------- //
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = String(format: "%0.2f", sender.value)
        
        heightLabel.text = "\(height)m"
    }
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = Int(sender.value)
        weightLabel.text = "\(weight)Kg"
    }
    
    
    
    @IBAction func pressedButton(_ sender: UIButton) {
       let height = heightSlider.value
       let weight = weightSlider.value
       
        // pow -> pow(height, 2)
       let bmi = (weight / (height * height))
       print(String(format: "%0.2f", bmi))
        
    
        let secondVC = SecondViewController()
        self.present(secondVC, animated: true, completion: nil)
        
        
    }
    

}

