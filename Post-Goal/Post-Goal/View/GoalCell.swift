//
//  GoalCell.swift
//  Post-Goal
//
//  Created by Ahmed Elbasha on 12/26/17.
//  Copyright © 2017 Ahmed Elbasha. All rights reserved.
//

import UIKit

class GoalCell: UITableViewCell {
    
    @IBOutlet weak var goalDescriptionLabel: UILabel!
    @IBOutlet weak var goalTypeLabel: UILabel!
    @IBOutlet weak var goalProgressLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    // configures what every cell should contains based on data fetched from Goal core data entity.
    func configureCell(goal: Goal) {
        self.goalDescriptionLabel.text = goal.goalDescription
        self.goalTypeLabel.text = goal.goalType
        self.goalProgressLabel.text = String(describing: goal.goalProgress)
    }
}
