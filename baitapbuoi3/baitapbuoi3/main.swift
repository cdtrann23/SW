//
//  main.swift
//  baitapbuoi3
//
//  Created by Duy  Tran on 25/11/2021.
//

import Foundation


//func hcn() {
//    print("Nhập chiều dài hình chữ nhật: ", terminator: " ")
//    let a = Int(readLine() ?? "") ?? 0
//
//    print("Nhập chiều rộng hình chữ nhật: ", terminator: " ")
//    let b = Int(readLine() ?? "") ?? 0
//
//    for i in 1...b {
//        for j in 1...a {
//            print("#", terminator: " ")
//        }
//        print(" ")
//    }
//
//}
//
//hcn()
//
//func hcnr() {
//    print("Nhập chiều dài hình chữ nhật: ", terminator: " ")
//    let a = Int(readLine() ?? "") ?? 0
//
//    print("Nhập chiều rộng hình chữ nhật: ", terminator: " ")
//    let b = Int(readLine() ?? "") ?? 0
//
//    for i in 1...b {
//        for j in 1...a {
//            if(i == 1 || j == 1 || i == b || j == a){
//                print("#", terminator: " ")
//            }
//            else{
//                print(" ", terminator: " ")
//            }
//        }
//        print(" ")
//    }
//}
//
//hcnr()
//
//
//func time() {
//    var h: Int
//    var m: Int
//    var s: Int
//    var x: Int
//
//    repeat{
//        print("Giờ: ", terminator: " ")
//        h = Int(readLine() ?? "") ?? 0
//    } while (h >= 24)
//
//    repeat{
//        print("Phút: ", terminator: " ")
//        m = Int(readLine() ?? "") ?? 0
//    } while (m >= 60)
//
//    repeat{
//        print("Giây: ", terminator: " ")
//        s = Int(readLine() ?? "") ?? 0
//    } while (s >= 60)
//
//    repeat{
//        print("X giây(x <= 10000): ", terminator: " ")
//        x = Int(readLine() ?? "") ?? 0
//    } while (x > 10000)
//
//    print("=== \(h):\(m):\(s) ===")
//
//    s += x
//    while (s >= 60) {
//        m += 1;
//        s -= 60;
//    }
//    while (m >= 60) {
//        h += 1;
//        m -= 60;
//    }
//    while (h >= 24) {
//        h -= 24;
//    }
//
//    print("Sau \(x) giây thì đồng hồ sẽ là: \(h):\(m):\(s)")
//}
//
//
//time()



//var my: String?
//
//my = "Hello"
//
//print(my)
//
//
//for i in (0...10){
//    print(i)
//    continue
//}


//let a = "thu ba"
////let b = "hn"
////
////let c = b + a
//print(a.isEmpty)

var a = [1,2,3,5]
print(a.count)

