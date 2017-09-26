//: Playground - noun: a place where people can play

import UIKit

// ? --> Optional Type (nil value allowed)
var str: String?
str = nil

var capital = ["대한민국(키)": "서울(데이터)", "영국(키)": "런던(데이터)", "프랑스(키)": "파리"]
print(capital["프랑스(키)"]!) // Force unwrap of Optional Type

let dic2: Dictionary<String, Int> = ["Key": 100]
print(dic2)

let dic3: [String: Int] = ["Key": 200]
print(dic3)

var dic4 = [String: String]()
dic4["want"] = "wanted"
print(dic4)