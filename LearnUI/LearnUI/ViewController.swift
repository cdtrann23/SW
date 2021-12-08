//
//  ViewController.swift
//  LearnUI
//
//  Created by Duy  Tran on 06/12/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var userText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    @IBOutlet weak var desText: UILabel!
    @IBOutlet weak var buttonLogin: UIButton!
    @IBOutlet weak var myView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        nameLable.text = "Zaloooooo"
        nameLable.font = UIFont.systemFont(ofSize: 30)
        
        myView.backgroundColor = UIColor.systemPink
        
        //thay đổi frame
        //nameLable.frame = CGRect(x: 30, y: 100, width: 200, height: 300)
        
        
        //thay kiểu bàn phím
        
        userText.keyboardType = UIKeyboardType.URL
    }

    @IBAction func buttonAdd(_ sender: Any) {
        guard let dessText = userText.text else {
            return
        }
        desText.text = dessText
    }
    
}

