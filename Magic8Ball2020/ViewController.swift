//
//  ViewController.swift
//  Magic8Ball2020
//
//  Created by  on 9/17/20.
//  Copyright © 2020 DocsApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var myLabel: UILabel!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func revealFortune()
    {
         let randomInt = Int.random(in: 1...5)
            var response = ""
            if randomInt == 1
            {
               response = "Yes"
            }
            else if randomInt == 2
            {
                response = "No"
            }
            else if randomInt == 3
            {
                response = "Maybe"
            }
            else if randomInt == 4
            {
                response = "ask again later"
            }
            else
            {
                response = "Don't count on it"
            }
                
            let question = myTextField.text
            myLabel.text = question
            myLabel.text = question! + "\n" + response
            myTextField.text = ""
        }
    
    @IBAction func buttonTapped(_ sender: UIButton)
    {
        revealFortune()
    }
    //override func motionEnded(_ motion: UIEvent.EventSubtype, with )
}

