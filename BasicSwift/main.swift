import Foundation

// Bài 1: Viết chương trình nhập vào số nguyên n. Hỏi:
//        n có phải là số nguyên tố hay không?

func kiemTraSNT(_ n: Int) -> Bool {
    if n < 2 {
        return false
    }
    var i = 2
    let sqrtN = Int(sqrt(Double(n)))
    while i <= sqrtN {
        if n % i == 0 {
            return false
        }
        i += 1
    }
    return true
}

print("Nhập vào số nguyên n: ", terminator: "")
    let n = Int(readLine() ?? "") ?? 0
    if kiemTraSNT(n) {
        print("\(n) là số nguyên tố.")
    } else {
        print("\(n) không phải là số nguyên tố.")
}
//
//  Bài 2: Tìm số n bé nhất sao cho n! lớn hơn một số m cho trước (m nhập từ bàn phím).


func giaiThua(_ c: Int) -> Int {
    if c == 0 {
        return 1
    }
    return c * giaiThua(c - 1)
}

func timSo(_ m: Int) -> Int {
    var c = 1
    while giaiThua(c) <= m {
        c += 1
    }
    return c
}


print("Nhập vào số m: ", terminator: "")
    let m = Int(readLine() ?? "") ?? 0
        let c = timSo(m)
        print("Số n bé nhất sao cho n! > \(m) là \(c).")
    

