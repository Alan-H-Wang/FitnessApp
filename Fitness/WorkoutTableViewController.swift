//
//  WorkoutTableViewController.swift
//  Fitness
//
//  Created by Albert Stanley on 9/3/19.
//  Copyright © 2019 Alan Wang. All rights reserved.
//

import UIKit

class WorkoutTableViewController: UITableViewController {
    var workouts = [Workout]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadSampleWorkouts()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return workouts.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "WorkoutTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? WorkoutTableViewCell else {
            fatalError("The dequeued cell is not an instance of WorkoutTableViewCell")
        }

        let workout = workouts[indexPath.row]
        
        cell.nameLabel.text = workout.name
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    //MARK: Private Methods
    func loadSampleWorkouts(){
        /*
        var benchPress = Exercise(name: "Bench Press", photo: )
        var inclinePress =  Exercise(name: "Incline Press", numberOfSets: 5, repList: [5,5,5,5,5])
        var shoulderPress =  Exercise(name: "Shoulder Press", numberOfSets: 5, repList: [5,5,5,5,5])
        var skullCrushers =  Exercise(name: "Skull Crushers", numberOfSets: 5, repList: [5,5,5,5,5])
        
        var latPullDown = Exercise(name: "Lat Pull Down", numberOfSets: 5, repList: [5,5,5,5,5])
        var bicepCurls = Exercise(name: "Bicep Curls", numberOfSets: 5, repList: [5,5,5,5,5])
        var pullUp = Exercise(name: "Pull Up", numberOfSets: 5, repList: [5,5,5,5,5])
        
        var squat = Exercise(name: "Squat", numberOfSets: 5, repList: [5,5,5,5,5])
        var deadlift = Exercise(name: "Deadlift", numberOfSets: 5, repList: [5,5,5,5,5])
        var legPress = Exercise(name: "legPress", numberOfSets: 5, repList: [5,5,5,5,5])
        
        guard let workout1 = Workout(name: "Push Day", exercises: [benchPress!, inclinePress!, shoulderPress!, skullCrushers!]) else {
            fatalError("Unable to instantiate workout1")
        }
        
        guard let workout2 = Workout(name: "Pull Day", exercises: [latPullDown!, bicepCurls!, pullUp!]) else {
            fatalError("Unable to instantiate workout2")
        }
        guard let workout3 = Workout(name: "Leg Day", exercises: [squat!, deadlift!, legPress!]) else {
            fatalError("Unable to instantiate workout3")
        }
        workouts += [workout1, workout2, workout3]
        */
    }
}
