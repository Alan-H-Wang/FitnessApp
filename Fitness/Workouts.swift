//
//  Workouts.swift
//  Fitness
//
//  Created by Alan Wang on 8/13/19.
//  Copyright © 2019 Alan Wang. All rights reserved.
//

import Foundation
struct Workout{
    var name: String
    var exercises: [Exercise]
    
    init(name: String, exercises: [Exercise]){
        self.name = name
        self.exercises = exercises
    }
}
