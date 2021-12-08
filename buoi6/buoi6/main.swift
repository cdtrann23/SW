//
//  main.swift
//  buoi6
//
//  Created by Duy  Tran on 01/12/2021.
//

import Foundation


//var arr = [1,2,4,1,3,4,5,2,5,6]
//
//var a = arr.sorted(){ i, j in
//    i < j
//
//}
//
//var a2 = arr.filter(){ i in
//    i%2 == 0
//}
//
//print(a)
//print(a2)


//func sum(a:Int, b:Int) -> Int {
//    return a+b
//}
//
////Khai báo closuers
//var summ = { (a: Int, b: Int) -> Int in
//    return a + b
//}
//print(sum(a: 5, b: 6))
//print(summ(3, 4))


//func inName(name: String) -> String {
//    return "Xin chao \(name)"
//}
//
//var name = {(name: String) in
//    return "Heloo \(name)"
//}
//
//
//print(inName(name: "Duy Tran"))
//print(name("Duy DUy"))

//
//func max(a: Int, b: Int, completion: @escaping (Int) -> Void)  {
//    if a > b{
//        completion(a)
//
//    }else{
//        completion(b)
//    }
//}
//
//
//max(a: 5, b: 6){ value in
//    var number = value + 100
//    print("So lon nhat la: \(value), number = \(number)")
//}


//
//func nameinput(com: @escaping (String) -> Void) {
//    print("Nhập tên của bạn: ")
//    let name = readLine() ?? ""
//    com(name)
//}
//
//nameinput{ input in
//    print("Xin chào: \(input)")
//
//}


for i in 100...200
{
    if ( i % 3 == 0 ){
        print(i)
    }
    
}
