//
//  ProfileViewController.swift
//  Fitness
//
//  Created by Alan Wang on 8/10/19.
//  Copyright © 2019 Alan Wang. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
   
    @IBOutlet weak var TDEELabel: UILabel!
    
    var height: Int = 0;
    var weight: Int = 0;
    var age: Int = 0;
    
    @IBOutlet weak var heightCounter: UILabel!
    
    
    @IBOutlet weak var weightCounter: UILabel!
    
    @IBOutlet weak var ageCounter: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func heightSlider(_ sender: UISlider) {
        height = lroundf(sender.value);
        heightCounter.text = "\(height)";
        
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        weight = lroundf(sender.value);
        weightCounter.text = "\(weight)";
    }
    
    @IBAction func ageSlider(_ sender: UISlider) {
        age = lroundf(sender.value);
        ageCounter.text = "\(age)";
        let weight10 = 10 * weight;
        let heightMultiplied: Double = 6.25 * Double(height);
        let ageMultiplied: Double = 5.0 * Double(age);
        let TDEE: Double = Double(weight10) + heightMultiplied - ageMultiplied + 5;
        TDEELabel.text = "\(TDEE)";
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
