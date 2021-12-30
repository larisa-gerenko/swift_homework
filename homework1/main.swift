//
//  main.swift
//  homework1
//
//  Created by Larisa on 26.12.2021.
//

import Foundation

//Практическое задание 2
//1. Написать функцию, которая определяет, четное число или нет.

func isEven (_ number: Int) {
    if number % 2 == 0 {
        print("Число четное")
    } else {
        print("Число нечетное")
    }
}

isEven(21)

//2. Написать функцию, которая определяет, делится ли число без остатка на 3.

func fallIntoThree (_ numberTwo: Int) {
    if numberTwo % 3 == 0 {
        print("Число делится без остатка на 3")
    } else {
        print("Число не делится без остатка на 3")
    }
}

fallIntoThree(20)

// 3. Создать возрастающий массив из 100 чисел.

let array = Array(0...99)
print(array)

// 4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.

var deleteNumbers = array.filter {$0 % 2 != 0 && $0 % 3 == 0}
print(deleteNumbers)


