//
//  main.swift
//  buoi5
//
//  Created by Duy  Tran on 29/11/2021.
//

import Foundation

//var name: String?
//name = "Duy ham học"
//
//print(name)
//print(name!)


//struct HCN {
//    var CD : Int
//    var CR : Int
//
//
//    //khỏi tạo
//    init(){
//        CD = 10
//        CR = 4
//    }
//
//    init(w: Int, h: Int){
//        CD = h
//        CR = w
//    }
//
//    func CV() -> Int {
//       return (CR+CD)*2
//    }
//    func DT() -> Int {
//       return (CR*CD)
//    }
//
//}
//
//var HinhChuNhat: HCN = HCN()
//
//HinhChuNhat.CD = 10
//HinhChuNhat.CR = 4
//
//print("Chu vi hình chữ nhật là: \(HinhChuNhat.CV())")
//print("Diện tích hình chữ nhật là: \(HinhChuNhat.DT())")


//
//class Gio {
//    var gio: Int
//    var phut: Int
//    var giay: Int
//
//    init() {
//        gio = 12
//        phut = 20
//        giay = 9
//    }
//
//    func inGio() {
//        print("\(gio):\(phut):\(giay)")
//    }
//
//}
//
//
//class Ngay: Gio {
//    var ngay: Int
//    var thang: Int
//    var nam: Int
//
//    override init() {
//        ngay = 12
//        thang = 04
//        nam = 2021
//
//        super.init()
//        self.gio = 23
//        self.phut = 34
//        self.giay = 23
//    }
//
//    func show() {
//        print("Hôm nay là ngày: \(ngay) tháng \(thang) năm \(nam), giờ:\(gio):\(phut):\(giay) ")
//        print("Hôm nay là ngày: \(ngay) tháng \(thang) năm \(nam)")
//        super.inGio()
//    }
//
//}
//
//
//var day = Ngay()
//print(day.ngay, day.thang, day.gio, day.phut)
//
//day.show()

//
//
//Khai báo kiểu dữ liệu SinhVien có các trường họ tên, giới tính, tuổi, điểm toán – lý – hóa. Có phương thức tính điểm trung bình và in ra thông tin sinh viên

//class SinhVien {
//    var hoTen: String
//    var gioiTinh: String
//    var tuoi: Int
//
//    init(Name: String, Gender: String, Age: Int) {
//        hoTen = Name
//        gioiTinh = Gender
//        tuoi = Age
//    }
//
//    func show() {
//        print("Họ và tên: \(hoTen)")
//        print("Giới tính: \(gioiTinh)")
//        print("Tuổi: \(tuoi)")
//    }
//}
//
//class Diem: SinhVien {
//    var toan: Float
//    var ly: Float
//    var hoa: Float
//
//    init() {
//        toan = 8
//        ly = 9
//        hoa = 10
//
//        super.init(Name: "Duy", Gender: "Nam", Age: 21)
//        self.hoTen = "Trần Cao Duy"
//        self.gioiTinh = "Nam"
//        self.tuoi = 22
//
//    }
//
//    func avg() -> Float {
//        return (toan + ly + hoa)/3
//    }
//
//    func inDiem() {
//        print("Điểm toán: \(toan)")
//        print("Điểm toán: \(ly)")
//        print("Điểm toán: \(hoa)")
//        print("Điểm trung bình: \(avg())")
//
//    }
//}
//
//
//var sv = Diem()
//
//sv.show()
//sv.inDiem()





//Khai báo kiểu dữ liệu ThongTin có các trường Họ tên, tuổi, địa chỉ và kiểu
//Human  kế thừa ThongTin có các trường: nghề nghiệp, giới tính

class ThongTin {
    var hoTen: String
    var tuoi: Int
    var diaChi: String
    
    init(Name: String, Age: Int, Address: String) {
        hoTen = Name
        tuoi = Age
        diaChi = Address

    }
    
    func show() {
        print("Họ và tên: \(hoTen)")
        print("Tuổi: \(tuoi)")
        print("Địa chỉ: \(diaChi)")
    }
}

class Human: ThongTin {
    var ngheNghiep: String
    var gioTinh: String
        
    init() {
        ngheNghiep = "IT"
        gioTinh = "Nam"
        
        
        super.init(Name: "Duy", Age: 21, Address: "Hanoi")
        self.hoTen = "Trần Cao Duy"
        self.tuoi = 22
        self.diaChi = "Hanoi"

    }
    
    
    func inTT() {
        print("Nghề nghiệp: \(ngheNghiep)")
        print("Giới tính: \(gioTinh)")
    }
}


var ps1 = Human()

ps1.show()
ps1.inTT()
