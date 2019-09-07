//
//  Workouts.swift
//  Fitness
//
//  Created by Albert Stanley on 8/13/19.
//  Copyright © 2019 Albert Stanley. All rights reserved.
//

import UIKit
import os.log

class Workout{
    //MARK: Archiving Paths
    static let DocumentsDirectory = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
    static let ArchiveURL = DocumentsDirectory.appendingPathComponent("workouts")
    
    //MARK: Properties
    var name: String
    var exercises: [Exercise]
    
    
    //var reps: [Int]
    
    //MARK: Initialization
    init?(name: String, exercises: [Exercise]){
        if name.isEmpty {
            return nil
        }
        
        self.name = name
        self.exercises = exercises
    }
}

