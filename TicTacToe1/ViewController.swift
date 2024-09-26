//
//  ViewController.swift
//  TicTacToe1
//
//  Created by Stefano Casafranca Laos on 9/24/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet  weak var topLeftButton : UIButton!
    @IBOutlet  weak var topMiddleButton : UIButton!
    @IBOutlet  weak var topRightButton : UIButton!
    
    @IBOutlet  weak var middleLeftButton : UIButton!
    @IBOutlet  weak var middleMiddleButton : UIButton!
    @IBOutlet  weak var middleRightButton : UIButton!
    
    @IBOutlet  weak var bottomLeftButton : UIButton!
    @IBOutlet  weak var bottomMiddleButton : UIButton!
    @IBOutlet  weak var bottomRightButton : UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myGame.restart()
        showModelCells()
        
    }
    
    func showModelCells(){
        
        topLeftButton.setTitle(myGame.topLeft, for: .normal)
        topMiddleButton.setTitle(myGame.topMiddle, for: .normal)
        topRightButton.setTitle(myGame.topRight, for: .normal)
        
        middleLeftButton.setTitle(myGame.middleLeft, for: .normal)
        middleMiddleButton.setTitle(myGame.middleMiddle, for: .normal)
        middleRightButton.setTitle(myGame.middleRight, for: .normal)
        
        bottomLeftButton.setTitle(myGame.bottomLeft, for: .normal)
        bottomMiddleButton.setTitle(myGame.bottomMiddle, for: .normal)
        bottomRightButton.setTitle(myGame.bottomRight, for: .normal)
         
        
    }

    @IBAction func selectCellBy (_ sender : UIButton){
        let tag = sender.tag
        if myGame.canPlaceMarkAt(tag: tag){
            myGame.placeMarkAt(tag: tag)
            let mark = myGame.markPlacedAt(tag: tag)
            let kindOfTicTacToe = myGame.haveTicTacToe(tag: tag)
            sender.setTitle(mark, for: .normal)    }

        }
       
}

