//
//  HomeViewController.swift
//  Fitness
//
//  Created by Albert Stanley on 8/21/19.
//  Copyright © 2019 Alan Wang. All rights reserved.
//
import UIKit
import FacebookCore
import FacebookLogin
import FBSDKCoreKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let loginButton = FBLoginButton(permissions: [.publicProfile])
        loginButton.center = view.center
        self.view.addSubview(loginButton)
        
  
    }


}
