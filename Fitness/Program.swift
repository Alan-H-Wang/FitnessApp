//
//  Program.swift
//  Fitness
//
//  Created by Alan Wang on 8/13/19.
//  Copyright © 2019 Alan Wang. All rights reserved.
//

import Foundation
class Program
{
    var name: String;
    var workouts: [Workout];
    
    init(name: String, workouts: [Workout]) {
        self.name = name;
        self.workouts = workouts;
    }
}
