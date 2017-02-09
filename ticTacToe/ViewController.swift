//
//  ViewController.swift
//  ticTacToe
//
//  Created by West Kraemer on 2/7/17.
//  Copyright © 2017 West Kraemer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var activeGame = true
    
    // 1 is noughts, 2 is crosses
    var activePlayer = 1
    
    var gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0] // 0 is empty, 1 is noughts, 2 is crosses
    
    let winningCombinations = [[0, 1, 2], [3, 4, 5,], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
    
    @IBAction func buttonPressed(_ sender: AnyObject) {
        
        let activePosition = sender.tag - 1
        
        if gameState[activePosition] == 0 && activeGame {
            
            gameState[activePosition] = activePlayer
        
            if activePlayer == 1 {
        
                sender.setImage(UIImage(named: "nought.png"), for: [])
                activePlayer = 2
        
            } else {
            
                sender.setImage(UIImage(named: "cross.png"), for: [])
                activePlayer = 1
            }
            
            for combination in winningCombinations {
                
                //If this is true, then there is a winner.
                if gameState[combination[0]] != 0 && gameState[combination[0]] == gameState[combination[1]] && gameState[combination[1]] == gameState[combination[2]] {
                
                    activeGame = false
                    
                    print(gameState[combination[0]])
                
                }
            }
            
        }
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

