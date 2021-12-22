//
//  screen3.swift
//  BT_Buoi1_NC
//
//  Created by Duy  Tran on 22/12/2021.
//

import UIKit

class screen3: UIViewController {

    @IBOutlet weak var labelLogin: UILabel!
    @IBOutlet weak var labelRegister: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let attributedString = NSMutableAttributedString.init(string: "Have account? Log in")
        
        let attributedString2 = NSMutableAttributedString.init(string: "By registering, you automatically accept the Terms & Pollices of COVID - 19 app.")
        
        attributedString.addAttribute(NSAttributedString.Key.underlineStyle, value: 1, range:
            NSRange.init(location: 0, length: attributedString.length));
        
        attributedString2.addAttribute(NSAttributedString.Key.underlineStyle, value: 1, range:
            NSRange.init(location: 0, length: attributedString2.length));
        
        labelLogin.attributedText = attributedString
        labelRegister.attributedText = attributedString2
        
        
        
        
    }
}
