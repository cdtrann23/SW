//
//  sadsf.swift
//  First
//
//  Created by Duy  Tran on 19/11/2021.
//

import Foundation

func Show(){
    if a == -1{
        
        if b < 0 {
            if c < 0{
                print("-x^2 \(b)x \(c) = 0")
            }
            else{
                print("-x^2 \(b)x + \(c) = 0")
            }
        }
        else{
            if c < 0{
                print("-x^2 + \(b)x \(c) = 0")
            }
            else{
                print("-x^2 + \(b)x + \(c) = 0")
            }
        }
    }
    else if a == 1{
        if b < 0 {
            if c < 0{
                print("x^2 \(b)x \(c) = 0")
            }
            else{
                print("x^2 \(b)x + \(c) = 0")
            }
        }
        else{
            if c < 0{
                print("x^2 + \(b)x \(c) = 0")
            }
            else{
                print("x^2 + \(b)x + \(c) = 0")
            }
        }
    }
    else{
        if b < 0 {
            if c < 0{
                print("\(a)x^2 \(b)x \(c) = 0")
            }
            else{
                print("\(a)x^2 \(b)x + \(c) = 0")
            }
        }
        else{
            if c < 0{
                print("\(a)x^2 + \(b)x \(c) = 0")
            }
            else{
                print("\(a)x^2 + \(b)x + \(c) = 0")
            }
        }
    }

}
