//
//  main.swift
//  buoi3
//
//  Created by Duy  Tran on 24/11/2021.
//

import Foundation

//func sw() {
//    print("Nhập điểm: ", terminator: "")
//    let ax = readLine() ?? ""
//    let a = Float(ax) ?? 0
//
//    switch a {
//    case 0..<3:
//        print("Yếu")
//        sw()
//    case 3..<5:
//        print("Trung bình")
//        sw()
//    case 5..<8:
//        print("Khá")
//        sw()
//    case 8...10:
//        print("Giỏi")
//        sw()
//    default:
//        print("Điểm quá phạm vi 10!")
//        break
//    }
//}
//
//
//sw()



//
//func nhap(num: [Float]) {
//    print(num)
//    print("Phần tử bé nhất: \(num.min() ?? 0)")
//    print("Phần tử bé nhất: \(num.max() ?? 0)")
//
//    var s : Float = 0
//    for i in num{
//        s += Float(i)
//    }
//
//    let avg: Float = s/Float((num.count))
//    print("Trung bình cộng của dãy là: \(avg)")
//}
//
//
//nhap(num: [10, 22, 11, 22])


func game() {
    

    print("\nNhập đáp án của bạn: ")
    let dapan = readLine() ?? ""
   
    switch dapan {
        case "a":
            print("Đáp án của bạn sai rồi!")
            
        case "b":
            print("Đáp án của bạn sai rồi!")
        case "c":
            print("Đáp án của bạn sai rồi!")
        case "d":
            print("Chính xác, Bạn thật là giỏi!")
            
        default:
            print("Phải chọn đáp án a, b, c, d!",  terminator: "")
            game()
    }
}

print("Đâu không phải là ngôn ngữ lập trình: ")
print("a: ")
print("b: ")
print("c: ")
print("d: ")
game()

