//
//  GoalsViewController.swift
//  Post-Goal
//
//  Created by Ahmed Elbasha on 12/24/17.
//  Copyright © 2017 Ahmed Elbasha. All rights reserved.
//

import UIKit
import CoreData

let appDelegate = UIApplication.shared.delegate as? AppDelegate

class GoalsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var goals: [Goal] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // sets GoalsVC as delegate and datasource for tableView.
        tableView.delegate = self
        tableView.dataSource = self
        
        // appears the tableView to check if it works properly.
        tableView.isHidden = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        fetchGoalData { (complete) in
            if complete {
                if goals.count >= 1 {
                    tableView.isHidden = false
                } else {
                    tableView.isHidden = true
                }
            }
        }
        
        tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func AddGoalButtonWasPressed(_ sender: Any) {
        // presents the CreateGoalVC using our custom CAAnimation.
        guard let createGoalVC = storyboard?.instantiateViewController(withIdentifier: "CreateGoalVC") else {return}
        presentDetail(createGoalVC)
    }
    
}

// conforms to UITableViewDelegate and UITableViewDataSource protocols.
// the created StaticTableViewCells is only to test if our TableView works properly  will turn it into dynamic soon.
extension GoalsViewController: UITableViewDelegate, UITableViewDataSource {
    
    // determines number of sections in TableView.
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // determines the number of rows in each section of TableView.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return goals.count
    }
    
    // indicates what every TableViewCell consists of.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "goalCell") as? GoalCell else { return UITableViewCell() }
        let goal = goals[indexPath.row]
        
        cell.configureCell(goal: goal)
        return cell
    }
}

extension GoalsViewController {
    func fetchGoalData(completion: (_ complete: Bool) -> ()) {
        guard let managedContext = appDelegate?.persistentContainer.viewContext else {return}
        let fetchRequest = NSFetchRequest<Goal>(entityName: "Goal")
        
        do {
            goals = try managedContext.fetch(fetchRequest)
            print("Successfully fetched data...")
            completion(true)
        } catch {
            debugPrint("could not fetch... \(error.localizedDescription)")
            completion(false)
        }
    }
}

