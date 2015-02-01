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
    
    let triviaBook = TriviaBook()
    
    // counter to track array number as users taps show next fact
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        factLabel.text = triviaBook.triviaArray[0]
    }
    //Show next trivia
    @IBAction func pressedFalse() {
        //increment the array counter
        
        // Allow facts to cycle infinitely
        // check current value of array
        // if it's equal to the highest array subscript
        // set array number equal to 0
        // display the first trivia
        // else
        
        if counter == triviaBook.triviaArray.count - 1 {
            counter = 0
            factLabel.text = triviaBook.triviaArray[counter]
        }
        else{
            factLabel.text = triviaBook.triviaArray[++counter]
        }
    }
    
    // Show previous trivia
    @IBAction func pressedShowFacts() {
        //decrement the array counter
        
        if counter == 0 {
            counter = triviaBook.triviaArray.count - 1
            factLabel.text = triviaBook.triviaArray[counter]
        }
        else{
            factLabel.text = triviaBook.triviaArray[--counter]
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

// next refactor into one function
// that checks first last
// sets the counter
// tapping on the button only displays the fact
// where would incrementing/ decrementing happen?

// next: show the number of facts in the list
// ie. 1 of 6