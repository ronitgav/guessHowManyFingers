//
//  ViewController.swift
//  guessHowManyFingers
//
//  Created by Precious Metal on 5/16/17.
//  Copyright © 2017 roga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet var resultLabel: UILabel!
    
    @IBOutlet var guessField: UITextField!
    
    @IBAction func guessCheck(_ sender: Any) {
        let random = Int(arc4random_uniform(6) + 1)
        
        let num = Int(guessField.text!)
        
        if num == random {
            resultLabel.text = "You're right!"
        }
        else {
            resultLabel.text = "Wrong! It was a \(random)."
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

