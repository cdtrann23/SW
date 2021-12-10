//
//  TransformController.swift
//  UIbuoi2
//
//  Created by Duy  Tran on 08/12/2021.
//

import UIKit

class TransformController: UIViewController {

    @IBOutlet weak var textLable: UILabel!
    @IBOutlet weak var imgRuby: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad(
        )
        
        self.view.backgroundColor = .black
        self.textLable.textColor = .white
        self.textLable.font = UIFont.boldSystemFont(ofSize: 40)
        
        
        self.imgRuby.alpha = 0
        UIImageView.animate(withDuration: 3) {
            self.imgRuby.transform = CGAffineTransform.identity
            self.imgRuby.alpha = 1
        }
        
        UILabel.animate(withDuration: 3) {
            self.textLable.transform = CGAffineTransform(translationX: 0, y: self.textLable.bounds.height - self.view.bounds.height/5)
        }
        
                
        
        
    }
    
    

}
