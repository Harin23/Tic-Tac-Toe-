//
//  ThirdViewController.swift
//  TicTacToe
//
//  Created by Harinder Singh Bal on 2019-07-04.
//  Copyright © 2019 h_bal_made_it. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var Player1ThirdView: UILabel!
    
    @IBOutlet weak var Player2ThirdView: UILabel!
    
    @IBOutlet weak var Score1LabelTV: UILabel!
    
    @IBOutlet weak var Score2LabelTV: UILabel!
    
    @IBOutlet weak var DeclareOutcome: UILabel!
    
    
    var drawTV : Bool = false
    var xWONTV : Bool = false
    var oWONTV : Bool = false
    var score1ThirdV : Int = 0
    var score2ThirdV : Int = 0
    var player1 : String!
    var player2 : String!

    override func viewDidLoad() {
        super.viewDidLoad()
        Player1ThirdView.text = player1
        Player2ThirdView.text = player2
        updateScore()
        Score1LabelTV.text = "\(score1ThirdV)"
        Score2LabelTV.text = "\(score2ThirdV)"
    }
    
    func updateScore(){
        if xWONTV == true{
            DeclareOutcome.text = player1 + " is the winner"
            score1ThirdV = score1ThirdV + 1
            xWONTV = false
        }else if oWONTV == true{
            DeclareOutcome.text = player2 + " is the winner"
            score2ThirdV = score2ThirdV + 1
            oWONTV = false
        }else if drawTV == true{
            DeclareOutcome.text = "Draw"
            drawTV = false
        }
        
    }
    
    
    @IBAction func RematchTV(_ sender: Any) {
         performSegue(withIdentifier: "Rematch", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let SecondViewControllerVC = segue.destination as? SecondViewController {
            SecondViewControllerVC.p1 = self.player1
            SecondViewControllerVC.p2 = self.player2
            SecondViewControllerVC.score1 = score1ThirdV
            SecondViewControllerVC.score2 = score2ThirdV
            SecondViewControllerVC.draw = drawTV
            SecondViewControllerVC.xWON = xWONTV
            SecondViewControllerVC.oWON = oWONTV
        }
    }
    
    
    @IBAction func exitMainMenu(_ sender: Any) {
         performSegue(withIdentifier: "MainMenu", sender: self)
    }
    

}
