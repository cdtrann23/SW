//
//  ViewController.swift
//  Demo_Timer
//
//  Created by Duy  Tran on 13/12/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var contentLbl: UILabel!
    
    @IBOutlet weak var btPress: UIButton!
    @IBOutlet weak var numberSlider: UISlider!
    var timer: Timer?
    var sec = 10
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // dem nguowjc
//        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { _ in
//            self.sec -= 1
//            self.contentLbl.text = "\(self.sec)"
//            if self.sec == 0{
//                self.timer?.invalidate()
//            }
//        })
        
        
        //Slider
        numberSlider.minimumValue = 10
        numberSlider.maximumValue = 100
        
        numberSlider.value = 75
        //set color
        numberSlider.minimumTrackTintColor = .green
        numberSlider.maximumTrackTintColor = .orange
        
        numberSlider.thumbTintColor = .red
        
    }

    @IBAction func sldChangeValue(_ sender: UISlider) {
        contentLbl.text = "\(Int(sender.value))"
        sec = (Int(sender.value))
    }
    
    @IBAction func actionPress(_ sender: Any) {
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { _ in
            self.sec -= 1
            self.contentLbl.text = "\(self.sec)"
            if self.sec == 0{
                self.timer?.invalidate()
            }
        })
                
        
    }
}

