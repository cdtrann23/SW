//
//  func.swift
//  baitapbuoi2
//
//  Created by Duy  Tran on 23/11/2021.
//

import Foundation




func Max() {
    
    print("Nhập số a: ", terminator: "")
    let a = Int(readLine() ?? "") ?? 0
    print("Nhập số b: ", terminator: "")
    let b = Int(readLine() ?? "") ?? 0
    print("Nhập số c: ", terminator: "")
    let c = Int(readLine() ?? "") ?? 0

    var max: Int

    max = a
    if(max <= b){
        max = b
        if (max <= c) {
            max = c
            print("Giá trị lớn nhất trong 3 số \(a), \(b), \(c) là: \(max)")
        }
        else{
            print("Giá trị lớn nhất trong 3 số \(a), \(b), \(c) là: \(max)")
        }
    }else{
        if (max <= c) {
            max = c
            print("Giá trị lớn nhất trong 3 số \(a), \(b), \(c) là: \(max)")
        }
        else{
            print("Giá trị lớn nhất trong 3 số \(a), \(b), \(c) là: \(max)")
        }
    }
}


func TG() {
    print("Nhập cạnh a: ", terminator: "")
    let a = Int(readLine() ?? "") ?? 0
    print("Nhập cạnh b: ", terminator: "")
    let b = Int(readLine() ?? "") ?? 0
    print("Nhập cạnh c: ", terminator: "")
    let c = Int(readLine() ?? "") ?? 0

    
    if( a+b>c && b+c>a && a+c>b ){
        print("Đủ điều kiện là một tam giác!")
        let p: Float
        let s: Float
        p = Float((a + b + c) / 2)
        s = sqrt(p*(p - Float(a))*(p - Float(b))*(p - Float(c)))
    
        print("Diện tích tam giác: \(s)")
    
    }
    else{
        print("a, b, c không phải là 3 cạnh của tam giác")
    }
    
}


func findN() {
    
    func gt(_ num:Int) -> Int{
        if num == 0 || num == 1{
            return 1
        }else{
            return(num*gt(num - 1))
        }
    }

    print("Nhập m: ", terminator: "")
    let m = Int(readLine() ?? "") ?? 0
    
    for n in 0..<m{
        if gt(n) > m {
            print("\(n) là số nhỏ nhất để \(n)! > \(m)" )
            break
        }
        else{
            print("Không tồn tại số n để n! > m")
            break
        }
    }

}

func hoTen() {
    print("Nhập họ và tên (tên có 3 trữ): ", terminator: "")

    if let fullname = readLine() {
        let fullNameArr = fullname.components(separatedBy: " ")
        print("Hiển thị: \(fullNameArr[0]) \(fullNameArr[2])")
    }
}

func last() {
    
    let a = [11, 4, 20, 66, 21, 33, 45]
    
    print("Cho mảng a: \(a), gồm \(a.count) phần tử!")
    for (index, item) in a.enumerated() {
        if item % 2 != 0{
            if index == 0{
                print("Số lẻ đầu tiên là số: \(item) tại vị trí đầu tiên")
                break
            }
            else{
                print("Số lẻ đầu tiên là số: \(item) tại vị trí \(index + 1)")
                break
            }
        }
    }
    for (index, item) in a.reversed().enumerated() {
        if item % 2 == 0{
            print("Số chẵn cuối cùng là số: \(item) tại vị trí \(a.count - index)")
            break
        
        }
    }

    
 }

func swc() {
    print("Lựa chọn của bạn: ", terminator: "")
    let ax = readLine() ?? ""
    let a = Int(ax) ?? 0
    
    switch a {
    case 1:
        Max()
        swc()
    case 2:
        TG()
        swc()
    case 3:
        findN()
        swc()
    case 4:
        hoTen()
        swc()
    case 5:
        last()
        swc()
    case 0:
        print("Thoát!")
        break

    default:
        swc()
            
    }
}
