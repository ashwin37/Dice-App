//
//  ViewController.swift
//  Dice App
//
//  Created by Rakesh Viparla on 10/20/16.
//  Copyright © 2016 adroit37. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var dice1ImgView: UIImageView!
    @IBOutlet weak var dice2ImgView: UIImageView!
    
    let diceArray : [String] = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       changeDiceFace()
    }

    //MARK: Roll Button Methods
    
    @IBAction func rollBtnPressed(sender: AnyObject) {
       
        print("Roll button pressed")
        changeDiceFace()
    }
    
    func changeDiceFace(){
       
        let firstRandIndex = Int(arc4random_uniform(6))
        let secRandIndex = Int(arc4random_uniform(6))
        
        dice1ImgView.image = UIImage(named: diceArray[firstRandIndex])
        dice2ImgView.image = UIImage(named: diceArray[secRandIndex])
    }
    
    //TODO: Add Shake Gesture handling
    
    override func canBecomeFirstResponder() -> Bool {
        return true
    }
    
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent?) {
       
        print("Device is in Shake Gesture Mode")
        changeDiceFace()
    }
}

