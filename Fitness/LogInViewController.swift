//
//  LogInViewController.swift
//  Fitness
//
//  Created by Alan Wang on 8/10/19.
//  Copyright © 2019 Alan Wang. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {

    @IBAction func loginTapped(_ sender: Any) {
        navigateToMainInterface()
    }
    
    private func navigateToMainInterface(){
        let mainStoryboard = UIStoryboard(name: "MainApp", bundle: Bundle.main)
        guard let mainNavigationVC = mainStoryboard.instantiateViewController(withIdentifier: "MainTabBarController") as? MainTabBarController
            else{
                return
        }
        
        present(mainNavigationVC, animated: true, completion: nil)
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
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
