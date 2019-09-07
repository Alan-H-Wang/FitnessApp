//
//  Exercise.swift
//  FitnessAppTrial
//
//  Created by Albert Stanley on 8/9/19.
//  Copyright © 2019 Albert Stanley. All rights reserved.
//

import Foundation

// Examples of excercisesL benchpress, seated shoulder dumbell press
struct Exercise{
    var name: String
    var alternateNames: [String] = []
    var identifier: Int
    var muscleTargets: [String] =  []
    var defaultSets: Int
    var defaultRepWeightList:[(Int,Int)]
    
    static var muscles = ["Biceps", "Triceps", "Pectorals", "Hamstrings","Quadriceps", "Shoulder", "Rear Delts"]
    
    static var identifierFactory = 0
    
    init(name: String){
        
        self.name = name
        self.identifier = Exercise.getUniqueIdentifier()
        defaultSets = 5
        defaultRepWeightList = Array(repeating: (5,10), count: defaultSets)
    }
    
    static func getUniqueIdentifier() -> Int{
        identifierFactory += 1
        return identifierFactory
    }
    
    
    
    
    
    
    
}
