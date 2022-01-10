//
//  main.swift
//  homework1
//
//  Created by Larisa on 26.12.2021.
//

import Foundation

/resources/1.3_3_1_1637237818.png
//Практическое задание 2
//1. Написать функцию, которая определяет, четное число или нет.

func isEven (_ number: Int) -> Bool {
    return number % 2 == 0
}

if isEven(21) {
    print("Число четное")
} else {
    print("Число нечетное")
}

//2. Написать функцию, которая определяет, делится ли число без остатка на 3.

func fallIntoThree (_ numberTwo: Int) -> Bool{
    return numberTwo % 3 == 0
}

if fallIntoThree(20) {
    print("Число делится без остатка на 3")
} else {
    print("Число не делится без остатка на 3")
}

// 3. Создать возрастающий массив из 100 чисел.

let array = Array(0...99)
print(array)

/resources/1.3_3_1_1637237818.png
// 4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.

var deleteNumbers = array.filter { !isEven($0) && fallIntoThree($0) }

print(deleteNumbers)


