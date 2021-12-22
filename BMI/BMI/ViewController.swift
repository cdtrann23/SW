//
//  ViewController.swift
//  BMI
//
//  Created by Duy  Tran on 13/12/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nuButton: UIButton!
    @IBOutlet weak var namButton: UIButton!
    
    @IBOutlet weak var chieucaolbl: UILabel!
    @IBOutlet weak var slidechieucao: UISlider!
    
    @IBOutlet weak var cannanglbl: UILabel!
    @IBOutlet weak var slidecannang: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func actionNam(_ sender: Any) {
        namButton.alpha = 1
        nuButton.alpha = 0
    }
    
    @IBAction func actionNu(_ sender: Any) {
        namButton.alpha = 0
        nuButton.alpha = 1
    }
    
    
    @IBAction func actionCC(_ sender: Any) {
        chieucaolbl.text = "\(Int(slidechieucao.value))"
        
    }
    
    
    @IBAction func actionCN(_ sender: Any) {
        cannanglbl.text = "\(Int(slidecannang.value))"
    }
    
    
    @IBAction func tinhBMI(_ sender: Any) {
        var bmi: Float
        let cc = (Float(slidechieucao.value)/10)
        let cn = (Float(slidecannang.value))
        print(cc)
        bmi = cn / (cc*cc)
        
        let alertController = UIAlertController(title: "Thông báo", message: "Chỉ số BMI: \(bmi)", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Ok", style: .default) { _ in
            print("Ok")
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { _ in
            print("Cancel")
        }
        
        alertController.addAction(okAction)
        alertController.addAction(cancelAction)
        present(alertController, animated: true, completion: nil)
        
    }
    
}

