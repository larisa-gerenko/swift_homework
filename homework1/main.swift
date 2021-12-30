//
//  main.swift
//  homework1
//
//  Created by Larisa on 26.12.2021.
//

import Foundation




//Практическое задание 2
//1. Написать функцию, которая определяет, четное число или нет.

func isEven (number: Int) {
    if number % 2 == 0 {
        print("Число четное")
    } else {
        print("Число нечетное")
    }
}

var result: () = isEven(number: 21)

//2. Написать функцию, которая определяет, делится ли число без остатка на 3.

func fallIntoThree (numberTwo: Int) {
    if numberTwo % 3 == 0 {
        print("Число делится без остатка на 3")
    } else {
        print("Число не делится без остатка на 3")
    }
}

var resultTwo: () = fallIntoThree(numberTwo: 20)
