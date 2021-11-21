//
//  func.swift
//  baitapbuoi1
//
//  Created by Duy  Tran on 21/11/2021.
//

import Foundation

func first() {
    
    print("1. Tính và in ra tổng của bình phương 2 số a, b (a, b nhập từ bàn phím)")
    print("Nhập a: ", terminator: "")
    let ax = readLine() ?? ""
    let a = Int(ax) ?? 0
    print("Nhập b: ", terminator: "")
    let bx = readLine() ?? ""
    let b = Int(bx) ?? 0

    var sum: Float

    sum = pow(Float(a), Float(2)) + pow(Float(b), Float(2))

    print("Tổng bình phương của \(a) và \(b) là: \(sum)")
}

func second() {
    print("2. Cho 2 số a và b, in ra phần dư của phép tính a cho b (a, b nhập từ bàn phím).")
    print("Nhập a: ", terminator: "")
    let cx = readLine() ?? ""
    let c = Int(cx) ?? 0
    print("Nhập b: ", terminator: "")
    let dx = readLine() ?? ""
    let d = Int(dx) ?? 0

    var x: Float
    
    x = Float(c % d)
    print("Phần dư của phép chia \(c) cho \(d) là: \(x)")
}

func thir(){
    print("3. Cho 2 số a và b, in ra số lớn hơn trong hai số đó (a, b nhập từ bàn phím). Sử dụng toán tử 3 ngôi.")
    
    print("Nhập a: ", terminator: "")
    let ax = readLine() ?? ""
    let a = Int(ax) ?? 0
    
    print("Nhập b: ", terminator: "")
    let bx = readLine() ?? ""
    let b = Int(bx) ?? 0
        
    let max = a < b ? b : a
    
    print("Số lớn hơn trong 2 số a và b vừa nhập là: \(max)")
}

func last() {
    print("4. Cho nhiệt độ C nhập từ bàn phím, in ra nhiệt độ F tương ứng.")
    
    print("Nhập độ C: ", terminator: "")
    let doc = readLine() ?? ""
    let c = Int(doc) ?? 0
    
    var dof: Float
    
    dof = Float(c) * 1.8 + 32
    
    print("\(c) độ C = \(dof) độ F")
    
}

func afterlast() {
    print("5. Cho nhiệt độ C nhập từ bàn phím, in ra nhiệt độ F tương ứng.")
    
    print("Nhập độ F: ", terminator: "")
    let dof = readLine() ?? ""
    let f = Int(dof) ?? 0
    
    var doc: Float
    
    doc = Float(f - 32) / 1.8
    print("\(f) độ F = \(doc) độ C")
    
}

func swc() {
    print("Lựa chọn của bạn: ", terminator: "")
    let ax = readLine() ?? ""
    let a = Int(ax) ?? 0
    switch a {
    case 1:
        first()
        swc()
    case 2:
        second()
        swc()
    case 3:
        thir()
        swc()
    case 4:
        last()
        swc()
    case 5:
        afterlast()
        swc()
    case 0:
        print("Thoát!")
        break

    default:
        swc()
            
    }


}
