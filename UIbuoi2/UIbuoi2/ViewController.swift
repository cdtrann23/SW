//
//  ViewController.swift
//  UIbuoi2
//
//  Created by Duy  Tran on 08/12/2021.
//

import UIKit

class ViewController: UIViewController {

    var greenView: UIView!
    var readView: UIView!
    var blueView = UIView()
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        greenView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        greenView.backgroundColor = UIColor.green
        
        
        readView = UIView()
        readView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        readView.backgroundColor = UIColor.red
        
        blueView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        blueView.backgroundColor = .blue
        
        //thêm các view con vào view cha
        self.view.addSubview(greenView)
        self.view.addSubview(readView)
        greenView.addSubview(blueView)
        
        //thay đổi size của view
        blueView.frame.size = CGSize(width: 100, height: 100)
        
        greenView.center = self.view.center
        //readView.center = greenView.center
        
        readView.layer.cornerRadius = readView.bounds.height / 2
        
        
//        readView.frame.origin.x = readView.frame.origin.x + 50
//        readView.frame.origin.y = readView.frame.origin.y - 100
//
        blueView.frame.origin.x = blueView.frame.origin.x - 40
        
        //clipToBounds
        greenView.clipsToBounds = true
        
        //greenView.transform = CGAffineTransform(rotationAngle: CGFloat.pi/2)
        
        //uiview
        
        UIView.animate(withDuration: 3){
            self.blueView.transform = CGAffineTransform(translationX: self.view.bounds.width - self.blueView.bounds.width, y: 0)
        }
        
//        UIView.animate(withDuration: 3){
//            self.readView.transform = CGAffineTransform(translationX: self.view.bounds.width - self.readView.bounds.width, y: self.view.bounds.height - self.readView.bounds.height)
//        }
        
//        UIView.animate(withDuration: 5) {
//            self.readView.transform = CGAffineTransform(translationX: 0, y: self.view.bounds.height - self.readView.bounds.height)
//        }completion: { _ in
//            UIView.animate(withDuration: 3) {
//                self.readView.transform = CGAffineTransform(translationX: self.view.bounds.width - self.readView.bounds.width, y: self.view.bounds.height - self.readView.bounds.height)
//            }
            
            
            
//        UIView.animate(withDuration: 1) {
//            self.readView.transform = CGAffineTransform(translationX: self.view.bounds.width - self.readView.bounds.height, y: 0)
//        }completion: { _ in
//            UIView.animate(withDuration: 1) {
//                self.readView.transform = CGAffineTransform(translationX: self.view.bounds.width - self.readView.bounds.width, y: self.view.bounds.height - self.readView.bounds.height)
//            }completion: { _ in
//                UIView.animate(withDuration: 1) {
//                    self.readView.transform = CGAffineTransform(translationX: 0, y: self.view.bounds.height - self.readView.bounds.width)
//                }
//            }
//        }
        
        //dịch chuyển ngang và ngược lại
        
        UIView.animateKeyframes(withDuration: 5, delay: 0, options: [ .autoreverse]) {
                self.readView.transform = CGAffineTransform(translationX: self.view.bounds.width - self.readView.bounds.width, y: 0)
            self.readView.alpha = 0
        }completion: { _ in
            self.readView.transform = CGAffineTransform.identity
            self.readView.alpha = 1
        }
            
            
            
            
            
            
            
            
            
        }
        
    }




