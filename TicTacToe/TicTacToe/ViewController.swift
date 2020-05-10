//
//  ViewController.swift
//  TicTacToe
//
//  Created by Harinder Singh Bal on 2019-06-30.
//  Copyright © 2019 h_bal_made_it. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var PlayerOneName: UITextField!
    @IBOutlet weak var PlayerTwoName: UITextField!
    
    //Variables to store the players names, intialized with default values
    var pOneTemp = ""
    var pTwoTemp = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        PlayerOneName.placeholder = "Player1"
        PlayerTwoName.placeholder = "Player2"

        
        //remove the keyboard once return pressed
        
        PlayerOneName.delegate = self
        PlayerTwoName.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
 
    
    
    @IBAction func ReadyButtonPressed(_ sender: Any) {
        //If loop to test if the users have entered the names, if not, then use default.
        
        pOneTemp = PlayerOneName.text!
        pTwoTemp = PlayerTwoName.text!
        
        if pOneTemp == "" {
            pOneTemp = "Player1"
        }

        if pTwoTemp == "" {
            pTwoTemp = "Player2"
        }

        performSegue(withIdentifier: "StartGame", sender: self)
    }
    
    //Use this function to transmit values through the segue to the next view
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let SecondViewControllerVC = segue.destination as? SecondViewController {
        SecondViewControllerVC.p1 = self.pOneTemp
        SecondViewControllerVC.p2 = self.pTwoTemp
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //dispose of any resources that can be recreated
    }
    
}


extension ViewController : UITextFieldDelegate {
    //use this function to remove keyboard above after user is done typing
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

