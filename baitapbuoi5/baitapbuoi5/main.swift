//
//  main.swift
//  baitapbuoi5
//
//  Created by Duy  Tran on 01/12/2021.
//

import Foundation


struct PhanSo {
    // Thuộc tính
    var tuSo: Int
    var mauSo: Int
    
//    init() {
//        tuSo = 0
//        mauSo = 0
//    }
//
//    init(tu: Int, mau: Int) {
//        self.tuSo = tu
//        self.mauSo = mau
//    }
    
    // Hàm tìm ước chung lớn nhất
    func timUCLN(tuSo: Int, mauSo: Int) -> Int {
        var a = tuSo
        var b = mauSo
        
        if (a==0 || b==0) {
            return a+b
        }
        
        while(a != b) {
            if (a > b) {
                a = a - b
            } else {
                b = b - a
            }
        }
        return a
    }
    // Hàm rút gọn phân số
    func rutGonPhanSo () {
        tuSo = tuSo/timUCLN(tuSo: tuSo, mauSo: mauSo)
        mauSo = mauSo/timUCLN(tuSo: tuSo, mauSo: mauSo)
    }
}

print("Nhập vào phân số thứ nhất: ")
print("Nhập tử số 1: ")
let a = Int(readLine() ?? "0") ?? 0
print("Nhập mẫu số 1: ")
let b = Int(readLine() ?? "0") ?? 0

print("Nhập vào phân số thứ hai: ")
print("Nhập tử số 2: ")
let c = Int(readLine() ?? "0") ?? 0
print("Nhập mẫu số 2: ")
let d = Int(readLine() ?? "0") ?? 0

let ps1 = PhanSo(tu: a, mau: b)
let ps2 = PhanSo(tu: c, mau: d)

print("Trước khi rút gọn")
print("Phân số 1: \(ps1.tuSo)/\(ps1.mauSo)")
print("Phân số 2: \(ps2.tuSo)/\(ps2.mauSo)")

print("Sau khi rút gọn")
ps1.rutGonPhanSo()
ps2.rutGonPhanSo()
print("Phân số 1: \(ps1.tuSo)/\(ps1.mauSo)")
print("Phân số 2: \(ps2.tuSo)/\(ps2.mauSo)")
