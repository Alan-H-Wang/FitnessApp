//
//  WorkoutTableViewCell.swift
//  Fitness
//
//  Created by Albert Stanley on 9/3/19.
//  Copyright © 2019 Alan Wang. All rights reserved.
//

import UIKit

class WorkoutTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
