//
//  ViewController.swift
//  baitapUI2
//
//  Created by Duy  Tran on 10/12/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgVN: UIImageView!
    @IBOutlet weak var imgTL: UIImageView!
    @IBOutlet weak var imgPLP: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func pressOnVN(_ sender: Any) {
        imgVN.isHidden = false
        imgTL.isHidden = true
        imgPLP.isHidden = true
    }
    @IBAction func pressOnPLP(_ sender: Any) {
        imgVN.isHidden = true
        imgTL.isHidden = true
        imgPLP.isHidden = false

    }
    @IBAction func pressOnTL(_ sender: Any) {
        imgVN.isHidden = true
        imgTL.isHidden = false
        imgPLP.isHidden = true

    }
    
}

