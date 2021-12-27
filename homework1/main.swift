//
//  main.swift
//  homework1
//
//  Created by Larisa on 26.12.2021.
//

import Foundation

// Задача 1. Решить квадратное уравнение.

let a = 2.0
let b = 5.0
let c = -7.0
var x1 = 0.0
var x2 = 0.0


let disc = b*b - 4*a*c


if disc < 0 {
    print("Корней нет")
}
else if disc == 0 {
    x1 = -b/(2*a)
}
else {
    x1 = (-b - sqrt(disc))/(2*a)
    x2 = (-b + sqrt(disc))/(2*a)
}

print(disc)
print(x1)
print(x2)

