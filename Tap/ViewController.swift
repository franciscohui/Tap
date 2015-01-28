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
    
    let factsArray = [
        "On the season one DVD audio commentary, Vince Gilligan revealed that Jesse was originally going to die by the end of season one. However, they changed their minds after seeing Aaron Paul's performance.",
        "When characters on the show are smoking meth, they are actually smoking sugar or rock candy but do not inhale.",
        "Marius Stan, who plays Walt's impressively-eyebrowed boss at the carwash Bogdan, in real life is an actual chemistry genius. He has a PhD in Chemistry, and still works in that field. Breaking Bad was his first foray into acting.",
        "Only twice during the series does Jesse refer to Walt by his first name.",
        "Walter was originally written to be 40 years old. AMC felt that 40 was too young for Walter to have a mid-life crisis and requested his age change to 50.",
        "While pitching the show to Bryan Cranston, Vince Gilligan told him he wanted to start off with a nerdy Mr. Chips type character and transform him into Scarface by the end of the show."]
    // counter to track array number as users taps show next fact
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        factLabel.text = factsArray[0]
    }
    
    // Show previous fact
    @IBAction func pressedShowFacts() {
        //decrement the array counter
        factLabel.text = factsArray[--counter]
    }
    // Show next fact
    @IBAction func pressedFalse() {
        //increment the array counter
        factLabel.text = factsArray[++counter]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

//when I tap on show fact
//take the current factsarraynumber
//increment it by 1