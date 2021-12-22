//
//  ViewController.swift
//  Buoi4UI
//
//  Created by Duy  Tran on 16/12/2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var hello: UIView!
    var ball = UIView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ball = UIView(frame: CGRect(x: 0, y: 0, width: 80, height: 80))
        ball.backgroundColor = .orange
        self.view.addSubview(ball)

        
//        hello.backgroundColor = .orange
//        hello.frame.size = CGSize(width: 100, height: 100)
        //ball.triangle()
            
        
        }


}

//extension UIView{
//    func triangle(){
//        let triangleLayerR = CAShapeLayer()
//        let path = UIBezierPath()
//        path.move(to: CGPoint(x: 50, y: 0))
//        path.addLine(to: CGPoint(x:0 , y: 0))
//        path.addLine(to: CGPoint(x:100 , y: 0))
//        path.addLine(to: CGPoint(x: 50, y: sqrt(100*100 - 50*50)))
//        triangleLayerR.path = path.cgPath
//        triangleLayerR.fillColor = UIColor.black.cgColor
//        triangleLayerR.opacity = 0.4
//        self.layer.addSublayer(triangleLayerR)
//        
//        let triangleLayerL = CAShapeLayer()
//        let path1 = UIBezierPath()
//        path1.move(to: CGPoint(x: 0, y: 0))
//        path1.addLine(to: CGPoint(x:50 , y: 0))
//        path1.addLine(to: CGPoint(x: 50, y: sqrt(100*100 - 50*50)))
//        triangleLayerL.path = path1.cgPath
//        triangleLayerL.fillColor = UIColor.black.cgColor
//        triangleLayerL.opacity = 0.4
//        self.layer.addSublayer(triangleLayerL)
//    }
//}
//
//
