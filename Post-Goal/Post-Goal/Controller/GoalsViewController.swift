//
//  GoalsViewController.swift
//  Post-Goal
//
//  Created by Ahmed Elbasha on 12/24/17.
//  Copyright © 2017 Ahmed Elbasha. All rights reserved.
//

import UIKit

class GoalsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func AddGoalButtonWasPressed(_ sender: Any) {
        print("button was pressed")
    }
    
}

