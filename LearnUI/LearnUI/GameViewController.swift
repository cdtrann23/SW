//
//  GameViewController.swift
//  LearnUI
//
//  Created by Duy  Tran on 06/12/2021.
//

import UIKit

class GameViewController: UIViewController {
    @IBOutlet weak var inputInt: UITextField!
    @IBOutlet weak var result: UILabel!
    var a = Int.random(in: 1...100)

    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
        
    @IBAction func buttonNhap(_ sender: Any) {
        guard let intX = inputInt.text,
              let number = Int(intX) else {
            return
        }
        if (number == a) {
            result.text = ("\(number)")
        }else if(number > a){
            
            result.text = ("Số \(number) bạn nhập lớn hơn số random của chúng tôi!")
        }
        else{
            result.text = ("Số \(number) bạn nhập nhỏ hơn số random của chúng tôi!")
        }
        
    }
    
}
