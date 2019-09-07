//
//  BrowseWorkoutsViewController.swift
//  Fitness
//
//  Created by Albert Stanley on 8/21/19.
//  Copyright © 2019 Alan Wang. All rights reserved.
//

import Foundation
import UIKit

class BrowseWorkoutsViewController: UIViewController{
    
    var customWorkoutButton = WorkoutButton()
    
    
    override func viewDidLoad(){
        super.viewDidLoad()
        customWorkoutButton.setTitle("Push Day", for: .normal)
        //setUpButtonConstraints()
    }
    
    func setUpButtonConstraints(){
        view.addSubview(customWorkoutButton)
        customWorkoutButton.translatesAutoresizingMaskIntoConstraints = false
        customWorkoutButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        customWorkoutButton.widthAnchor.constraint(equalToConstant: 280).isActive = true
        customWorkoutButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        customWorkoutButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -200).isActive = true
        
    }
}
