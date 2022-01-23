//
//  main.swift
//  homework1
//
//  Created by Larisa on 26.12.2021.
//

import Foundation

// 1. Реализовать свой тип коллекции «очередь» (queue) c использованием дженериков.

struct Queue <T> {
    var myQueue = [T]()
    
    mutating func addElement(_ element: T) {
        myQueue.append(element)
    }
    
    mutating func firstElement() -> T? {
        guard myQueue.count > 0 else {
            return nil
        }
        return myQueue.removeFirst()
    }
    
}

var hostList = Queue<String>()

hostList.addElement("192.168.1")
hostList.addElement("192.168.2")
hostList.addElement("192.168.3")

print(hostList.firstElement())
print(hostList.firstElement())
print(hostList.firstElement())
print(hostList.firstElement())
 
// 2. Добавить ему несколько методов высшего порядка, полезных для этой коллекции (пример: filter для массивов)

let numberList = [20, 30, 19, 1]
let numberListTwo = [2, 4, 6, 7]

for (numberOne, numberTwo) in zip (numberList, numberListTwo) {
    print("\(numberOne) : \(numberTwo)")
}

let evenNumbers = numberList.filter{$0 % 2 == 0}
let oddNumbers = numberList.filter{$0 % 2 != 0}
let summ = numberList.reduce(100, + )
let summ1 = numberList.reduce(100, - )

print(evenNumbers)
print(oddNumbers)
print(summ)
print(summ1)



