//: Playground - noun: a place where people can play

import UIKit

var arr_2: [[String]] = [
    ["iPhone6S"], ["iPhone6"], ["iPhone7"],
    ["iPad Air"], ["iPad Mini"], ["iPad Pro"]
]

var target: [String] = []
print("target size : \(target.count)")

if target.isEmpty {
    target.append("New Value")
}

print(target)
print("target size : \(target.count)")

target += arr_2[0]
print(target)
print("target size : \(target.count)")


target.insert("Mac Book Pro !", at: 1)
print(target)
print("target size : \(target.count)")

print("1st item removed ! \(target.removeFirst())")
print(target)

target.removeLast()

target.remove(at : 0)
