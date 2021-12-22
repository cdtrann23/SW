//
//  ViewController.swift
//  Demo_Gesture
//
//  Created by Duy  Tran on 13/12/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var flagIMG: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        flagIMG.isUserInteractionEnabled = true
        
        //Thao tac 1 cham
        
        let tapgesture = UITapGestureRecognizer(target: self, action: #selector(actionTap))
        flagIMG.addGestureRecognizer(tapgesture)
        // keo tha
//        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(actionPan(sender:)))
//        flagIMG.addGestureRecognizer(panGesture)
         //scale 2 ngon
        let pinchGesture = UIPinchGestureRecognizer(target: self, action: #selector(actionPin(sender:)))
        flagIMG.addGestureRecognizer(pinchGesture)
        //quay anh
        let rotateGesture = UIRotationGestureRecognizer(target: self, action: #selector(actionRotate(sender:)))
        flagIMG.addGestureRecognizer(rotateGesture)
        //longpress: an giu
        let longPressGesture = UIRotationGestureRecognizer(target: self, action: #selector(actionLongPress))
        flagIMG.addGestureRecognizer(longPressGesture)
        //truot
        let swipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(actionSwipe))
        swipeGesture.direction = .right
        flagIMG.addGestureRecognizer(swipeGesture)
        
        
    }

    @objc func actionTap(){
        print("Tapped Img")
    }
    
    @objc func actionPan(sender: UIPanGestureRecognizer){
        let point = sender.location(in: view)
        
        flagIMG.center = point
    }
    
    @objc func actionPin(sender: UIPinchGestureRecognizer){
        flagIMG.transform = CGAffineTransform(scaleX: sender.scale, y: sender.scale)
    }
    
    @objc func actionRotate(sender: UIRotationGestureRecognizer){
        flagIMG.transform = flagIMG.transform.rotated(by: sender.rotation)
    }
    
    @objc func actionLongPress(){
        print("press")
    }
    
    @objc func actionSwipe(){
        print("right")
    }
    
}

