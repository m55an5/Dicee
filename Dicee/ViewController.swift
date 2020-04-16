//
//  ViewController.swift
//  Dicee
//
//  Created by Manjot S Sandhu on 24/11/17.
//  Copyright © 2017 Manjot S Sandhu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomDice1: Int = 0
    var randomDice2: Int = 0
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    func updateImages(){
        
        // just a comment to update git for testing 
        randomDice1 = Int(arc4random_uniform(6))
        randomDice2 = Int(arc4random_uniform(6))
        
        diceImageView1.image = UIImage(named: "dice\(randomDice1+1)")
        diceImageView2.image = UIImage(named: "dice\(randomDice2+1)")
        
    }
    
    @IBAction func roll(_ sender: Any) {
        updateImages()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateImages()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

