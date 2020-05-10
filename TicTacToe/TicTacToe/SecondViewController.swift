//
//  SecondViewController.swift
//  TicTacToe
//
//  Created by Harinder Singh Bal on 2019-06-30.
//  Copyright © 2019 h_bal_made_it. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var Player1: UILabel!
    
    @IBOutlet weak var Player2: UILabel!
    
    @IBOutlet var blocks: [UIImageView]!
    
    @IBOutlet weak var Score1Label: UILabel!
    
    @IBOutlet weak var Score2Label: UILabel!
    
    
    
    
    var score1 : Int = 0
    var score2 : Int = 0
    var p1 : String!
    var p2 : String!
    var turn: Int = 1
    var lock : [Int] = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    var draw : Bool = false
    var xWON : Bool = false
    var oWON : Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Player1.text = p1
        Player1.textColor = UIColor.red
        Player2.text = p2
        Player2.textColor = UIColor.cyan
        Score1Label.text = "\(score1)"
        Score2Label.text = "\(score2)"
        

     

        //following code allows change to the image blocks
//        blocks[0].image=UIImage(named: "x")
 
        
    }
    
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //dispose of any resources that can be recreated
    }
    
        //logic to test if game is over and who won
    
    
    
    
    
    
    @IBAction func ChangePlayers(_ sender: Any) {
        performSegue(withIdentifier: "ChangePlayers", sender: self)
    }
    
    
    @IBAction func b1tapped(_ sender: UITapGestureRecognizer) {
        if lock[0] == 0{
            if turn == 1 {
                blocks[0].image=UIImage(named: "x")
                turn = 0
                lock[0] = 1
                xWon()
                testForDraw()
            }else{
                blocks[0].image=UIImage(named: "o")
                turn = 1
                lock[0] = 1
                oWon()
                testForDraw()
            }
        }
    }
    
    @IBAction func b2tapped(_ sender: UITapGestureRecognizer) {
        if lock[1] == 0{
            if turn == 1 {
                blocks[1].image=UIImage(named: "x")
                turn = 0
                lock[1] = 1
                xWon()
                testForDraw()
            }else{
                blocks[1].image=UIImage(named: "o")
                turn = 1
                lock[1] = 1
                oWon()
                testForDraw()
            }
        }
    }
    
    @IBAction func b3tapped(_ sender: UITapGestureRecognizer) {
        if lock[2] == 0{
            if turn == 1 {
                blocks[2].image=UIImage(named: "x")
                turn = 0
                lock[2] = 1
                xWon()
                testForDraw()
            }else{
                blocks[2].image=UIImage(named: "o")
                turn = 1
                lock[2] = 1
                oWon()
                testForDraw()
            }
        }
    }
    
    @IBAction func b4tapped(_ sender: UITapGestureRecognizer) {
        if lock[3] == 0{
            if turn == 1 {
                blocks[3].image=UIImage(named: "x")
                turn = 0
                lock[3] = 1
                xWon()
                testForDraw()
            }else{
                blocks[3].image=UIImage(named: "o")
                turn = 1
                lock[3] = 1
                oWon()
                testForDraw()
            }
        }
    }
    
    
    @IBAction func b5tapped(_ sender: UITapGestureRecognizer) {
        if lock[4] == 0{
            if turn == 1 {
                blocks[4].image=UIImage(named: "x")
                turn = 0
                lock[4] = 1
                xWon()
                testForDraw()
            }else{
                blocks[4].image=UIImage(named: "o")
                turn = 1
                lock[4] = 1
                oWon()
                testForDraw()
            }
        }
    }
    
    @IBAction func b6tapped(_ sender: UITapGestureRecognizer) {
        if lock[5] == 0{
            if turn == 1 {
                blocks[5].image=UIImage(named: "x")
                turn = 0
                lock[5] = 1
                xWon()
                testForDraw()
            }else{
                blocks[5].image=UIImage(named: "o")
                turn = 1
                lock[5] = 1
                oWon()
                testForDraw()
            }
        }
    }
    
    @IBAction func b7tapped(_ sender: UITapGestureRecognizer) {
        if lock[6] == 0{
            if turn == 1 {
                blocks[6].image=UIImage(named: "x")
                turn = 0
                lock[6] = 1
                xWon()
                testForDraw()
            }else{
                blocks[6].image=UIImage(named: "o")
                turn = 1
                lock[6] = 1
                oWon()
                testForDraw()
            }
        }
    }
    
    @IBAction func b8tapped(_ sender: UITapGestureRecognizer) {
        if lock[7] == 0{
            if turn == 1 {
                blocks[7].image=UIImage(named: "x")
                turn = 0
                lock[7] = 1
                xWon()
                testForDraw()
            }else{
                blocks[7].image=UIImage(named: "o")
                turn = 1
                lock[7] = 1
                oWon()
                testForDraw()
            }
        }
    }
    
    
    @IBAction func b9tapped(_ sender: UITapGestureRecognizer) {
        if lock[8] == 0{
            if turn == 1 {
                blocks[8].image=UIImage(named: "x")
                turn = 0
                lock[8] = 1
                xWon()
                testForDraw()
            }else{
                blocks[8].image=UIImage(named: "o")
                turn = 1
                lock[8] = 1
                oWon()
                testForDraw()
            }
        }
    }
    
    func xWon() {
        if blocks[0].image==UIImage(named: "x") && blocks[1].image==UIImage(named: "x") && blocks[2].image==UIImage(named: "x"){
            xWON = true
            performSegue(withIdentifier: "FinishGame", sender: self)
        }else if blocks[3].image==UIImage(named: "x") && blocks[4].image==UIImage(named: "x") && blocks[5].image==UIImage(named: "x"){
            xWON = true
            performSegue(withIdentifier: "FinishGame", sender: self)
        }else if blocks[6].image==UIImage(named: "x") && blocks[7].image==UIImage(named: "x") && blocks[8].image==UIImage(named: "x"){
            xWON = true
            performSegue(withIdentifier: "FinishGame", sender: self)
        }else if blocks[0].image==UIImage(named: "x") && blocks[3].image==UIImage(named: "x") && blocks[6].image==UIImage(named: "x"){
            xWON = true
            performSegue(withIdentifier: "FinishGame", sender: self)
        }else if blocks[1].image==UIImage(named: "x") && blocks[4].image==UIImage(named: "x") && blocks[7].image==UIImage(named: "x"){
            xWON = true
            performSegue(withIdentifier: "FinishGame", sender: self)
        }else if blocks[2].image==UIImage(named: "x") && blocks[5].image==UIImage(named: "x") && blocks[8].image==UIImage(named: "x"){
            xWON = true
            performSegue(withIdentifier: "FinishGame", sender: self)
        }else if blocks[0].image==UIImage(named: "x") && blocks[4].image==UIImage(named: "x") && blocks[8].image==UIImage(named: "x"){
            xWON = true
            performSegue(withIdentifier: "FinishGame", sender: self)
        }else if blocks[2].image==UIImage(named: "x") && blocks[4].image==UIImage(named: "x") && blocks[6].image==UIImage(named: "x"){
            xWON = true
            performSegue(withIdentifier: "FinishGame", sender: self)
        }
    }
    
    func oWon() {
        if blocks[0].image==UIImage(named: "o") && blocks[1].image==UIImage(named: "o") && blocks[2].image==UIImage(named: "o"){
            oWON = true
            performSegue(withIdentifier: "FinishGame", sender: self)
        }else if blocks[3].image==UIImage(named: "o") && blocks[4].image==UIImage(named: "o") && blocks[5].image==UIImage(named: "o"){
            oWON = true
            performSegue(withIdentifier: "FinishGame", sender: self)
        }else if blocks[6].image==UIImage(named: "o") && blocks[7].image==UIImage(named: "o") && blocks[8].image==UIImage(named: "o"){
            oWON = true
            performSegue(withIdentifier: "FinishGame", sender: self)
        }else if blocks[0].image==UIImage(named: "o") && blocks[3].image==UIImage(named: "o") && blocks[6].image==UIImage(named: "o"){
            oWON = true
            performSegue(withIdentifier: "FinishGame", sender: self)
        }else if blocks[1].image==UIImage(named: "o") && blocks[4].image==UIImage(named: "o") && blocks[7].image==UIImage(named: "o"){
            oWON = true
            performSegue(withIdentifier: "FinishGame", sender: self)
        }else if blocks[2].image==UIImage(named: "o") && blocks[5].image==UIImage(named: "o") && blocks[8].image==UIImage(named: "o"){
            oWON = true
            performSegue(withIdentifier: "FinishGame", sender: self)
        }else if blocks[0].image==UIImage(named: "o") && blocks[4].image==UIImage(named: "o") && blocks[8].image==UIImage(named: "o"){
            oWON = true
            performSegue(withIdentifier: "FinishGame", sender: self)
        }else if blocks[2].image==UIImage(named: "o") && blocks[4].image==UIImage(named: "o") && blocks[6].image==UIImage(named: "o"){
            oWON = true
            performSegue(withIdentifier: "FinishGame", sender: self)
        }
    }
    
    
    func testForDraw() {
        if lock == [1, 1, 1, 1, 1, 1, 1, 1, 1]{
            draw = true
            performSegue(withIdentifier: "FinishGame", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let ThirdViewControllerVC = segue.destination as? ThirdViewController {
            ThirdViewControllerVC.player1 = self.p1
            ThirdViewControllerVC.player2 = self.p2
            ThirdViewControllerVC.score1ThirdV = score1
            ThirdViewControllerVC.score2ThirdV = score2
            ThirdViewControllerVC.drawTV = draw
            ThirdViewControllerVC.xWONTV = xWON
            ThirdViewControllerVC.oWONTV = oWON
        }
    }
    
    
}
