//
//  func.swift
//  baitapbuoi4
//
//  Created by Duy  Tran on 28/11/2021.
//

import Foundation



func bai1() {
    // Sắp xếp mảng số nguyên theo chiều tăng dần:
    var Arr = [1,2,4,-2,6,-42,5,9,-23,54,75]
    var tg: Int
    print("Mảng vừa nhập là: \(Arr)")
    for i in (0..<Arr.count) {
        for j in (i + 1 ..< Arr.count){
            if(Arr[i] > Arr[j]){
                tg = Arr[i]
                Arr[i] = Arr[j]
                Arr[j] = tg
            }
        }
        
    }
    print("Mảng sau khi đã sắp xếp: \(Arr)")
    sxgd()

}

func sxgd() {
    // Sắp xếp mảng số nguyên theo chiều và giảm dần:
    var Arr = [1,2,4,-2,6,-42,5,9,-23,54,75]
    var tg: Int
    print("Mảng vừa nhập là: \(Arr)")
    for i in (0..<Arr.count) {
        for j in (i + 1 ..< Arr.count){
            if(Arr[i] < Arr[j]){
                tg = Arr[i]
                Arr[i] = Arr[j]
                Arr[j] = tg
            }
        }
        
    }
    print("Mảng sau khi đã sắp xếp: \(Arr)")

}


  
func bai2() {
//    var x: Int
//    var max: Int = 0
//    var i: Int
//
//    repeat{
//        print("Nhập số nguyên dương X (x <= 10000): ", terminator: " ")
//        x = Int(readLine() ?? "") ?? 0
//    } while (x > 10000)
//
//    if(x == 0){
//        max = 0
//    }
//
//    repeat{
//
//        i = x % 10
//        if(i > max){
//            max = i
//        }
//    } while (x == x/10)
//
//    print("Số lớn nhất trong số \(x) là số: \(max)")
    
    
    var x: Int
        repeat {
            print("Nhập số < 10000: ")
            let number = Int(readLine() ?? "0") ?? 0
            x = number
        } while (x > 10000)
        
        /* Có 3 trường hợp:
         - 10000 => số 0
         - Từ 0 -> 9 => trả luôn kết quả là số đó
         - Có 2 hoặc 3 hoặc 4 chữ số => thực hiện tách các chữ số rồi so sánh
         */
        
        if x == 10000 {
            print("Số lớn thứ 2 là số 0")
        } else if (x>=0 && x<10) {
            print("Số lớn thứ 2 là số \(x)")
        } else {
            let a = x/1000                  // Lấy số hàng nghìn
            let b = (x - a*1000)/100        // Lấy số hàng trăm
            let c = (x - a*1000 - b*100)/10 // Lấy số hàng chục
            let d = x%10                    // Lấy số hàng đơn vị
            
            var arrInt = [a, b, c, d]
            arrInt.sort()                   // Sắp xếp mảng tăng dần bằng hàm sort
            arrInt.reverse()                // Đảo ngược mảng thành mảng giảm dần
            print(arrInt)
            
            for i in 1..<arrInt.count {
                if arrInt[i] != arrInt[i-1] {
                    print("Số lớn thứ 2 là số: \(arrInt[i])")
                    break
                }
            }
        }

}


func bai3() {
    print("Nhập số tự nhiên bất kì: ", terminator: "")
    let a = Int(readLine() ?? "" ) ?? 0
    
    print("Tập hợp các ước của \(a) là: ", terminator: "")
    for i in (1...a){
        if(a % i == 0){
            print("\(i), ", terminator: "")
        }
    }
    
}



  

func bai4() {
    
    let a: Int = 5
    for i in (1...a){
        for j in (1...i){
            print("*", terminator: "")
        }
        print("")
    }
}


func bai5() {
    
    let a: Int = 5
    for i in (1...a){
        for j in (1..<i){
            print(" ", terminator: "")
        }
        for j in (1...(2*a - (2*i-1))){
            print("*", terminator: "")
        }
        print("")
    }
}


func bai6() {

    let a: Int = 5
    for i in (1...a){
        for j in (i..<a){
            print(" ", terminator: "")
        }
        for j in (1...(2*i-1)){
            print("*", terminator: "")
        }
        print("")
    }
}




func swc() {
    print("Lựa chọn của bạn: ", terminator: "")
    let ax = readLine() ?? ""
    let a = Int(ax) ?? 0
    
    switch a {
    case 1:
        bai1()
        swc()
    case 2:
        bai2()
        swc()
    case 3:
        bai3()
        swc()
    case 4:
        bai4()
        swc()
    case 5:
        bai5()
        swc()
    case 6:
        bai6()
        swc()
    case 0:
        print("Thoát!")
        break

    default:
        swc()
            
    }
}
