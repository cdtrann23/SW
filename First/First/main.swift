//
//  main.swift
//  First
//
//  Created by Duy  Tran on 19/11/2021.
//

import Foundation

//var a: Int = 10
//
//if a % 2 == 0{
//    print("\(a) la so chan")
//}

//
//var arr: [Int]
//arr = [10, 20, 40, 20, 43, 12, 43]
//
//
//if arr.isEmpty == false{
//    print("Mang da nhap la: \(arr)")
//    print("So phan tu trong mang la: \(arr.count) va phan tu thu 5 trong mang la: \(arr[4])")
//
//}

// Mark: Đọc input từ bàn phím
//print("Nhập tên của b đê: ", terminator: "")
//var myname = readLine() ?? ""
//print(myname)

print("Nhập a: ", terminator: "")
var ax = readLine() ?? ""
var a = Int(ax) ?? 0
print("Nhập b: ", terminator: "")
var bx = readLine() ?? ""
var b = Int(bx) ?? 0
print("Nhập c: ", terminator: "")
var cx = readLine() ?? ""
var c = Int(cx) ?? 0


let delta, x1, x2, x: Float


delta = Float(b*b - 4*a*c)

if(a == 0){
    print("Đây không là phương trình bận 2!")
}
else if delta >  0{
    Show()

    x1 = Float((-b + Int(sqrt(delta)))/(2*a))
    x2 = Float((-b - Int(sqrt(delta)))/(2*a))
    print("Phuong trinh co 2 nghiem phan biet: ")
    print("x1= \(x1)")
    print("x2= \(x2)")

}
else if delta == 0{
    Show()

    x = Float(-b/(2*a))
    print("Phuong trinh co nghiem kep: x1 = x2 = \(x)")
}
else{
    Show()

    print("Phuong trinh vo nghiem!")
}
