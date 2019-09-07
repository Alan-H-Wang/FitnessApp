//
//  Exercise.swift
//  FitnessAppTrial
//
//  Created by Albert Stanley on 8/9/19.
//  Copyright © 2019 Albert Stanley. All rights reserved.
//

import UIKit
import os.log

// Examples of excercisesL benchpress, seated shoulder dumbell press
class Exercise: NSObject, NSCoding{
    //MARK: Archiving Paths
    static let DocumentsDirectory = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
    static let ArchiveURL = DocumentsDirectory.appendingPathComponent("exercises")
    
    //MARK: Properties
    var name: String
    var photo: UIImage
    var explanation: String
    //var alternateNames: [String] = []
    //var muscleTargets: [String] =  []
    //var numberOfSets: Int
    //var repList: [Int]
    
    //MARK: Types
    struct PropertyKey{
        static let name = "name"
        static let photo = "photo"
        static let explanation = "explanation"
    }
    
    //MARK: Initialization
    init?(name: String, photo: UIImage?, explanation: String?){
        //Initialization should fail if the name, number of sets, or rep list is empty
        if name.isEmpty {
            return nil
        }
        
        self.name = name
        self.photo = photo!
        self.explanation = explanation!
    }
    
    //MARK: NSCoding
    func encode(with aCoder: NSCoder){
        aCoder.encode(name, forKey: PropertyKey.name)
        aCoder.encode(photo, forKey: PropertyKey.photo)
        aCoder.encode(explanation, forKey: PropertyKey.explanation)
    }
    
    required convenience init?(coder aDecoder: NSCoder){
        // The name is required. If we cannot decode a name string, the initializer should fail.
        guard let name = aDecoder.decodeObject(forKey: PropertyKey.name) as? String else {
            os_log("Unable to decode the name for a Meal object.", log: OSLog.default, type: .debug)
            
            return nil
        }
        // Because photo is an optional prpoperty of Meal, just use conditiional cast.
        let photo = aDecoder.decodeObject(forKey: PropertyKey.photo) as? UIImage
        let explanation = aDecoder.decodeObject(forKey: PropertyKey.explanation) as? String
        
        self.init(name: name, photo: photo, explanation: explanation)
    }
    
}
