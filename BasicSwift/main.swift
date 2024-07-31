//
//  main.swift
//  BasicSwift
//
//  Created by Phạm Trường Giang on 31/07/2024.
//

import Foundation

// Bài 1: cách 1
func kiemTraN(n: Int){
    if  n>=0 {
        print("Yes")
    } else{
        print("No")
    }
    
    if n%2==0{
        print("Yes")
    } else {
        print("No")
    }
    
    if n%5==0{
        print("Yes")
    } else {
        print("No")
    }
}
kiemTraN(n: 5)

// Bài 1: cách 2
print("Nhap tuoi của bạn: ")
let age = Int(readLine() ?? "") ?? 0
//if let age = ageStr {
//    if let ageNumber = Int(age){
//        print(age)
//    }
//}
func kiemTran() {
    print("Nhap n:", terminator: "")
    let n = Int(readLine() ?? "") ?? 0
    var message: String = "So \(n) là:"
    // kiem tra so am duong
    if n>0{
        message += "So duong, "
    } else if n<0{
        message += "So am, "
    } else {
        message += "So 0, Test"
    }
}




func kiemTraTamGiac(a: Int, b: Int, c: Int) {
    if a + b > c && a + c > b && b + c > a {
        print("a, b, c là 3 cạnh của tam giác")
        let p = (a + b + c) / 2
        let s = sqrt(Double(p) * (Double(p) - Double(a)) * (Double(p) - Double(b)) * (Double(p) - Double(c)))
        print("Diện tích của tam giác là: \(s)")
    } else {
        print("a, b, c không phải 3 cạnh của tam giác")
    }
}

kiemTraTamGiac(a: 5, b: 6, c: 7)


