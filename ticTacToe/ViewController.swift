//
//  ViewController.swift
//  ticTacToe
//
//  Created by West Kraemer on 2/7/17.
//  Copyright © 2017 West Kraemer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // 1 is noughts, 2 is crosses
    var activePlayer = 1
    
    var gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0] // 0 is empty, 1 is noughts, 2 is crosses
    
    @IBAction func buttonPressed(_ sender: AnyObject) {
        
        let activePosition = sender.tag - 1
        
        if gameState[activePosition] == 0 {
            
            gameState[activePosition] = activePlayer
        
            if activePlayer == 1 {
        
                sender.setImage(UIImage(named: "nought.png"), for: [])
                activePlayer = 2
        
            } else {
            
                sender.setImage(UIImage(named: "cross.png"), for: [])
                activePlayer = 1
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

