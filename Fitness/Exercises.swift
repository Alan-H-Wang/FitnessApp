//
//  Exercises.swift
//  Fitness
//
//  Created by Alan Wang on 8/13/19.
//  Copyright © 2019 Alan Wang. All rights reserved.
//

import Foundation
class Exercises
{
    var name: String;
    var musclesHit = Array<String>();
    var edit;
    
    init(name: String, musclesHit: Array<String>) {
        self.name = name;
        self.musclesHit = musclesHit;
    }
    
}
