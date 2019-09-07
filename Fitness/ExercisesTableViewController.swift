//
//  ExercisesTableViewController.swift
//  Fitness
//
//  Created by Albert Stanley on 9/5/19.
//  Copyright © 2019 Alan Wang. All rights reserved.
//

import UIKit
import os.log

class ExercisesTableViewController: UITableViewController {
    
    
    
    //MARK: Properties
    var exercises = [Exercise]()


    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.leftBarButtonItem = editButtonItem
        
        if let savedExercises = loadExercises(){
            exercises += savedExercises
        }
        loadSampleExercises()
    
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "ExerciseTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? ExerciseTableViewCell else{
            fatalError("The dequeued cell is not an instance of ExerciseTableViewCell")
        }
        
        let exercise = exercises[indexPath.row]
        cell.nameLabel.text = exercise.name
        
        // Configure the cell...

        return cell
    }
    

    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            exercises.remove(at: indexPath.row)
            saveExercises()
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        super.prepare(for: segue, sender: sender)
        switch(segue.identifier ?? ""){
        case "AddItem":
            os_log("Adding a new exercise.", log: OSLog.default, type: .debug)
        case "ShowDetail":
            guard let exerciseDetailViewController = segue.destination as? ExerciseViewController else {
            fatalError("Unexpected destination: \(segue.destination)")
            }
        guard let selectedExerciseCell = sender as? ExerciseTableViewCell else{
            fatalError("Unexpected sender: \(sender)")
        }
        guard let indexPath = tableView.indexPath(for: selectedExerciseCell) else{
            fatalError("The selected cell is not being displayed by the table")
        }
        let selectedExercise = exercises[indexPath.row]
        exerciseDetailViewController.exercise = selectedExercise
        default:
        fatalError("Unexpected Segue Identifier: \(segue.identifier)")
    }
    }
    
    //MARK: Actions
    
    //MARK: Private Methods
    private func loadSampleExercises(){
        let photo1 = UIImage(named:"exercise1")
        let photo2 = UIImage(named:"exercise2")
        let photo3 = UIImage(named:"exercise3")
        
        guard let exercise1 = Exercise(name: "Bench Press", photo: photo1, explanation: "Push up on the bar") else {
            fatalError("Unable to instantiate exercise1")
        }
        guard let exercise2 = Exercise(name: "Squat", photo: photo2, explanation: "Use the squat rack")else {
            fatalError("Unable to instantiate exercise2")
        }
        
        guard let exercise3 = Exercise(name: "Deadlift", photo: photo3, explanation: "Don't use your back when doing this exercise!") else {
            fatalError("Unable to instantiate exercise3")
        }
        
        exercises += [exercise1, exercise2, exercise3]
        
    }
    
    private func saveExercises(){
        let isSuccessfulSave = NSKeyedArchiver.archiveRootObject(exercises, toFile: Exercise.ArchiveURL.path)
        if isSuccessfulSave{
            os_log("Exercises successfully saved", log: OSLog.default, type: .debug)
        } else{
            os_log("Failed to save exercises...", log: OSLog.default, type: .error)
        }
    }
    
    private func loadExercises() -> [Exercise]?{
        return NSKeyedUnarchiver.unarchiveObject(withFile: Exercise.ArchiveURL.path) as? [Exercise]
    }
        /*
        var inclinePress =  Exercise(name: "Incline Press")
        var shoulderPress =  Exercise(name: "Shoulder Press")
        var skullCrushers =  Exercise(name: "Skull Crushers")
        
        var latPullDown = Exercise(name: "Lat Pull Down")
        var bicepCurls = Exercise(name: "Bicep Curls")
        var pullUp = Exercise(name: "Pull Up")
        
        
        var legPress = Exercise(name: "legPress")
 */
    
    
    
    

}
