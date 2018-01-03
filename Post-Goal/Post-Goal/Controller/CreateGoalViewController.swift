//
//  CreateGoalViewController.swift
//  Post-Goal
//
//  Created by Ahmed Elbasha on 1/3/18.
//  Copyright © 2018 Ahmed Elbasha. All rights reserved.
//

import UIKit

class CreateGoalViewController: UIViewController {
    
    @IBOutlet weak var goalTextView: UITextView!
    @IBOutlet weak var shortTermButton: UIButton!
    @IBOutlet weak var longTermButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func longTermButtonWasPressed(_ sender: Any) {
    }
    
    @IBAction func nextButtonWasPressed(_ sender: Any) {
    }
    
    @IBAction func shortTermButtonWasPressed(_ sender: Any) {
    }
    
    @IBAction func returnButtonWasPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
