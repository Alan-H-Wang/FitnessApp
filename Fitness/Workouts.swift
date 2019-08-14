//
//  Workouts.swift
//  Fitness
//
//  Created by Alan Wang on 8/13/19.
//  Copyright © 2019 Alan Wang. All rights reserved.
//

import Foundation
class Workouts
{
    var exercises = Array<Exercises>();
    var setsAndReps = [Int]();
    var name: String;
    
    init(name: String) {
        self.name = name;
        setsAndReps = Array(repeating: 8, count: 3);
    }
}
