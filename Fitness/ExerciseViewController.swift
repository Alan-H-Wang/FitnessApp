//
//  ExerciseViewController.swift
//  Fitness
//
//  Created by Albert Stanley on 9/6/19.
//  Copyright © 2019 Alan Wang. All rights reserved.
//

import UIKit
import os.log

class ExerciseViewController: UIViewController{
    //MARK: Properties
    
    @IBAction func cancel(_ sender: Any) {
        // Depending on style of presentation (modal or push presentation), this view controller needs to be dismissed in two different ways.
        let isPresentingInAddExerciseMode = presentingViewController is UINavigationController
        
        if isPresentingInAddExerciseMode {
            dismiss(animated: true, completion: nil)
        }
        else if let owningNavigationController = navigationController{
            owningNavigationController.popViewController(animated: true)
        }
        else {
            fatalError("The ExerciseViewController is not inside a navigation controller.")
        }
    }
    
    var exercise: Exercise?
    override func viewDidLoad(){
        super.viewDidLoad()
        
        
    }
    
}
