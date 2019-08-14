//
//  FitnessAppV1.swift
//  Fitness
//
//  Created by Alan Wang on 8/13/19.
//  Copyright © 2019 Alan Wang. All rights reserved.
//

import Foundation
class FitnessAppV1
{
    var benchPress: Exercises;
    var skullCrushers: Exercises;
    var pushDay: Workouts;
    var pushPullLegs: Program;
    
    init() {
        benchPress = Exercises(name: "Bench Press", musclesHit: ["Chest", "Triceps"])
    };
    
}
