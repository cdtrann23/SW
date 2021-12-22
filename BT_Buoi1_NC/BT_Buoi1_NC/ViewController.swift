//
//  ViewController.swift
//  BT_Buoi1_NC
//
//  Created by Duy  Tran on 21/12/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var forgotLable: UILabel!
    @IBOutlet weak var newuser: UILabel!
    
    @IBOutlet weak var mobileTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create a new Attributed String
        let attributedString = NSMutableAttributedString.init(string: "New User? Register here")
        let attributedString2 = NSMutableAttributedString.init(string: "Forgot?")

        // Add Underline Style Attribute.
        attributedString.addAttribute(NSAttributedString.Key.underlineStyle, value: 1, range:
            NSRange.init(location: 0, length: attributedString.length));
        attributedString2.addAttribute(NSAttributedString.Key.underlineStyle, value: 1, range:
            NSRange.init(location: 0, length: attributedString2.length));
        
        newuser.attributedText = attributedString
        forgotLable.attributedText = attributedString2
        
        let myColor : UIColor = UIColor.green

        mobileTextfield.layer.borderColor = myColor.cgColor
        passwordTextfield.layer.borderColor = myColor.cgColor
        
        
        mobileTextfield.layer.cornerRadius = 10.0
        mobileTextfield.layer.borderWidth = 0.3
        
        passwordTextfield.layer.cornerRadius = 10.0
        passwordTextfield.layer.borderWidth = 0.3

        
    }

    
}

