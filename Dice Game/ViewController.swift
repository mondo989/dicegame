//
//  ViewController.swift
//  Dice Game
//
//  Created by Armando Flores on 12/30/14.
//  Copyright (c) 2014 Armando Flores. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblLableComputerDice: UILabel!
    @IBOutlet weak var lblDicePlayer: UILabel!
    @IBOutlet weak var lblDiceComputer: UILabel!
    
    @IBOutlet weak var lblWinLose: UILabel!
    @IBOutlet weak var lblMoneyWonLost: UILabel!
    @IBOutlet weak var lblDifficultyLevel: UILabel!
    
    @IBOutlet weak var lblYourMoney: UILabel!
    
    @IBOutlet weak var txtMoneyBet: UITextField!
    @IBOutlet weak var stpMoneyBet: UIStepper!
    @IBOutlet weak var segDifficultyLevel: UISegmentedControl!
    
    
    var dicePlayer = 1
    var diceComputer = 1
    var diceTypeComputer = 6
    
    var totalMoney = 100
    var moneyBet = 0
    
    var bonusModifier = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stpMoneyBetAction(sender: UIStepper) {
    }
    
    @IBAction func segDifficultyLevelACTION(sender: UISegmentedControl) {
        
        if segDifficultyLevel.selectedSegmentIndex == 0 {
            diceTypeComputer = 6
        }
        if segDifficultyLevel.selectedSegmentIndex == 1 {
            diceTypeComputer = 8
        }
        if segDifficultyLevel.selectedSegmentIndex == 2 {
            diceTypeComputer = 10
        }
        if segDifficultyLevel.selectedSegmentIndex == 3 {
            diceTypeComputer = 12
        }
    }
    @IBAction func btnRollDice(sender: UIButton) {
        
        var playerRoll = arc4random_uniform(6)
        var computerRoll = arc4random_uniform(UInt32(diceTypeComputer))
        
        if playerRoll == 0 {
            playerRoll = 1
        }

        if computerRoll == 0 {
            computerRoll = 1
        }
        
        dicePlayer = Int(playerRoll)
        diceComputer = Int(computerRoll)
        
        lblDicePlayer.text = String(playerRoll)
        lblDiceComputer.text = String(computerRoll)
    }
   
}

