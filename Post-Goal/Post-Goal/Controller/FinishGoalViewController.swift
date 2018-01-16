//
//  FinishGoalViewController.swift
//  Post-Goal
//
//  Created by Ahmed Elbasha on 1/15/18.
//  Copyright © 2018 Ahmed Elbasha. All rights reserved.
//

import UIKit

class FinishGoalViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var createGoalButton: UIButton!
    @IBOutlet weak var pointsTextField: UITextField!
    
    var goalDescription: String!
    var goalType: GoalType!
    
    func initData(description: String, type: GoalType) {
        self.goalDescription = description
        self.goalType = type
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createGoalButton.bindToKeyboard()
        pointsTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func createGoalButtonWasPressed(_ sender: Any) {
        // Pass data into Core Data goal model.
    }
    
    @IBAction func returnButtonWasPressed(_ sender: Any) {
        dismissDetail()
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.text = ""
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        textField.resignFirstResponder()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        textFieldDidEndEditing(pointsTextField)
    }
}
