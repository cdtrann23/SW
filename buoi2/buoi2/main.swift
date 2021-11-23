//
//  main.swift
//  buoi2
//
//  Created by Duy  Tran on 22/11/2021.
//

import Foundation


//var dicTD = [String: String]()
//
//dicTD = ["Vietnam": "Hanoi", "Phutho":"Viettri"]
////
////print(dicTD)
////
////dicTD["Hanoi"] = "Hanoi"
////
//dicTD.updateValue("Hanoi", forKey: "Backinh")
////
//////dicTD.removeValue(forKey: "Trungquoc")
////
//print(dicTD)
//
//
//print(dicTD["Vietnam"])


// arr reverse

//var arrint = [1, 2, 3, 4]
//
//for i in arrint{
//    print(i)
//}
//
//for i in arrint.reversed(){
//    print(i)
//}

//
//for (tentinh, tentp) in dicTD{
//    print("Tên tỉnh: \(tentinh), Tên thành phố: \(tentp)")
//}

//enum SttSky {
//    case onl
//    case off
//    case typing
//
//}
//var stt: SttSky = .off
//
//stt = .onl
//
//print(stt)

//print("Nhập năm: ")
//var y = Int(readLine() ?? "0") ?? 0
//if y % 4 == 0 {
//    print("Năm \(y) là năm nhuận: ")
//}

//
//print("Nhập cạnh a: ", terminator: "")
//let ax = readLine() ?? ""
//let a = Int(ax) ?? 0
//print("Nhập cạnh b: ", terminator: "")
//let bx = readLine() ?? ""
//let b = Int(bx) ?? 0
//print("Nhập cạnh c: ", terminator: "")
//let cx = readLine() ?? ""
//let c = Int(cx) ?? 0
//
//if( a+b>c && b+c>a && a+c>b ){
//    print("Đủ điều kiện là một tam giác!")
//    let p: Float
//    let s: Float
//    p = Float((a + b + c) / 2)
//    s = sqrt(p*(p - Float(a))*(p - Float(b))*(p - Float(c)))
//
//    print("Diện tích tam giác: \(s)")
//
//}
//else{
//    print("Không là tam giác")
//}
//

//Tìm số n bé nhất sao cho n! lớn hơn một số m cho trước (m nhập từ bàn phím).

//print("Nhập số m: ", terminator: "")
//var m = Int(readLine() ?? "0") ?? 0
//
//func gt<N: Numeric>(_ x: N) -> N {
//    x == 0 ? 1 : x * gt(x - 1)
//}

//print("Nhập số m: ", terminator: "")
//var m = Int(readLine() ?? "0") ?? 0
//var x = m - 1
//func factorial( x: Int) {
//
//var fact = 1
//
//for n in 1...x {
//
//    fact = fact * n
//
//}
//
//print(fact)
//
//}

//var a = [1, 2, 3, 6, 7]
//for index in (a.count...0) {
//    print(index)
//}
//print(a.count)

//let k = 5
//for i in 10...k { print("i=\(i)") }
//for i in 10..<k { print("i=\(i)") }

//your value
//let array = [0,2,2,3,4,5,6,7,5]
//
////for item in array.reversed() {
////    print("Found \(item)")
////}
//
//for (index, item) in array.reversed().enumerated() {
//    if item % 2 == 0{
//        print("Số chẵn cuối cùng là số: \(item) tại vị trí \(array.count - index)")
//        break
//
//    }


//print("Nhập m: ", terminator: "")
//let m = Int(readLine() ?? "") ?? 0
//
//func gt(_ num:Int) -> Int{
//    if num == 0 || num == 1{
//        return 1
//    }else{
//        return(num*gt(num - 1))
//    }
//}
//
//for n in 0...m{
//    if gt(n) > m {
//        print("\(n) là số nhỏ nhất để \(n)! > \(m)" )
//        break
//    }
//}

//var fullname: String




//let fullName = "First xxx Last"
//let fullNameArr = fullName.components(separatedBy: " ")
//let firstName = fullNameArr[0] //First
//let lastName = fullNameArr[2]
//print(fullName)
//print(firstName)
//print(lastName)
