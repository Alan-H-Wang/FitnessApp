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
    var benchPress: Exercise;
    var skullCrushers: Exercise;
    var pushDay: Workout;
    var pushPullLegs: Program;
    
    init() {
        benchPress = Exercise(name: "Bench Press", musclesHit: ["Chest", "Triceps"])
    };
    
}
