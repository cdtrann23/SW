//
//  main.swift
//  ontapCB
//
//  Created by Duy  Tran on 16/12/2021.
//

import Foundation

//var a: [Int] = [1, 3, 5, 5,4, 6, 6,9]
//
//print(a)
//
//for i in 0...a.count{
//    if a[i] % 2 != 0{
//        a.append(0)
//    }
//
//}
//print(a)
//
            
//let a = [12, 11, 4, 20, 66, 21, 33, 45]
//
//print("Cho mảng a: \(a), gồm \(a.count) phần tử!")
//for (index, item) in a.enumerated() {
//    if item % 2 != 0{
//        if index == 0{
//            print("Số lẻ đầu tiên là số: \(item) tại vị trí đầu tiên")
//            break
//        }
//        else{
//            print("Số lẻ đầu tiên là số: \(item) tại vị trí th \(index + 1)")
//            break
//        }
//    }
//}
//for (index, item) in a.reversed().enumerated() {
//    if item % 2 == 0{
//        print("Số chẵn cuối cùng là số: \(item) tại vị trí \(a.count - index)")
//        break
//
//    }
//}
//var myString:String!
//
//myString = "Hello, Swift!"
//
//if myString != nil {
//    print(myString!)
//} else {
//    print("myString has nil value")
//}



//func optionalBinding() {
//      let name: String? = nil
//      let age: Int? = 3
//
//      if let ten = name{ // Khởi tạo một đối tượng ten = đối tượng optional name
//              print(ten) // sử dụng biến non-optional ten
//            }
//
//    // Khởi tạo một đối tượng tuoi = đối tượng optional age
//        guard let tuoi = age else {
//                print("age nil") // xử lý nếu age nil
//                return
//            }
//        print(tuoi) // sử dụng biến non-optional tuổi
//}
//
//optionalBinding()

let names: [String?] = ["Mumtaz", "Hussain", nil, "Khatri"]


func printMyNames(names: [String?]) {
  for i in 0..<names.count {
    guard let myName = names[i] else {
      print("error: name is not found")
      continue
    }
    print(myName)
  }
  print("End of For Loop")
}


printMyNames(names: names)

//
//class Vehicle{
//    var manufacturer: String?
//    let passengerCapacity: Int
//
//    init(passengerCapacity: Int) {
//        self.passengerCapacity = passengerCapacity
//    }
//}
//
//class Car: Vehicle {
//    var fuelType: String?
//}
//
//let car = Car(passengerCapacity: 4)
//
//car.fuelType = "gas"
//print(car.passengerCapacity, car.fuelType!)


var a:Int = 3
var b:Int = 5

let min = a > b ? b : a

print(min)
