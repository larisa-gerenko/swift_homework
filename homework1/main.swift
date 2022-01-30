//
//  main.swift
//  homework1
//
//  Created by Larisa on 26.12.2021.
//

import Foundation

/* 1. Придумать класс, методы которого могут завершаться неудачей и возвращать либо значение, либо ошибку Error?. Реализовать их вызов и обработать результат метода при помощи конструкции if let, или guard let.
 */
class IkeaGoods {
    
    private var goods = ["Диван ФРИХЕТЭН": 10000,
                         "Кровать БЭККСЕДА": 20000,
                         "кресло БРИМНЭС": 15000 ]
    
    func price(name: String) -> Int? {
        return goods[name]
    }
}

let goods = IkeaGoods()

if let price = goods.price(name: "Диван ФРИХЕТЭН") {
    print(price)
} else {
    print("Неверное наименование товара")
}



/* 2. Придумать класс, методы которого могут выбрасывать ошибки. Реализуйте несколько throws-функций. Вызовите их и обработайте результат вызова при помощи конструкции try/catch. */

enum BankMashineErrors: Error {
    case notEnoughFunds
    case balanceNotFound
}

class BankMashine {
    var cardBalance: Int?
    
    func takeMoney (summ: Int) throws {
        guard let balance = cardBalance else { throw BankMashineErrors.balanceNotFound}
        guard summ < balance else { throw BankMashineErrors.notEnoughFunds}
        
        
        cardBalance = balance - summ
        
        print("Выдача наличных \(summ)")
        
    }
}

let sberbank = BankMashine()
sberbank.cardBalance = 500

do {
   try sberbank.takeMoney(summ: 1000)
} catch let error {
    print(error)
    switch error {
    case BankMashineErrors.balanceNotFound:
        print("Ваш счет заблокирован")
   
    case BankMashineErrors.notEnoughFunds:
        print("Недостаточно средств")
   
    default:
        break
    }
}


