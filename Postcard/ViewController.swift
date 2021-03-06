//
//  ViewController.swift
//  Postcard
//
//  Created by Carlos Calderon on 10/25/14.
//  Copyright (c) 2014 ConstructySystems. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var enterTextMessageField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailbutton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        //Adding a comment
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        nameLabel.hidden = false;
        nameLabel.text = enterTextMessageField.text
        
        enterTextMessageField.text = ""
        enterTextMessageField.resignFirstResponder()
        
        nameLabel.textColor = UIColor.blueColor()
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        mailbutton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }
    
    

}

