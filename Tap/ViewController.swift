//
//  ViewController.swift
//  Tap
//
//  Created by Francisco Hui on 1/21/15.
//  Copyright (c) 2015 Francisco Hui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var factLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func pressedShowFacts() {
        //println("Hello")
        factLabel.text = "Correct!"
    }
    @IBAction func pressedFalse() {
        factLabel.text = "Sorry, it's a fact!"
    }
    @IBAction func pressedPlayAgain() {
        factLabel.text = "In 1908, New York City passes the Sullivan Ordinance making it illegal for women to smoke in public."
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

