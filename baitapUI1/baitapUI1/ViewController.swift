//
//  ViewController.swift
//  baitapUI1
//
//  Created by Duy  Tran on 07/12/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lightOn: UIImageView!
    @IBOutlet weak var lightOff: UIImageView!
    @IBOutlet weak var lableName: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onoff(_ sender: Any) {
        if lightOff.isHidden {
            lableName.setTitle("Bật đèn", for: .normal)
            lightOn.isHidden = true
            lightOff.isHidden = false
        }else{
            lableName.setTitle("Tắt đèn", for: .normal)
            lightOn.isHidden =  false
            lightOff.isHidden = true

        }
        
        
        
    }
    
}

