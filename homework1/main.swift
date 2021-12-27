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
} else if disc == 0 {
    x1 = -b/(2*a)
} else {
    x1 = (-b - sqrt(disc))/(2*a)
    x2 = (-b + sqrt(disc))/(2*a)
}

print(disc)
print(x1)
print(x2)

// Задача 2. Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.

let leg1 = 20.0
let leg2 = 30.0

let hypo = sqrt((pow(leg1, 2))+(pow(leg2, 2)))
let square = (1/2)*(leg1*leg2)
let perimeter = leg1 + leg2 + hypo


print(hypo)
print(square)
print(perimeter)


// Задача 3. Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.

let summ: Double = 350000.20
let percent: Double = 11
let years: Double = 5
let days:Double = years*365
let daysYear:Double = 365

let perEnd = (summ * percent * (days/daysYear))/100
let summEnd = summ + perEnd

print(perEnd)
print(summEnd)

