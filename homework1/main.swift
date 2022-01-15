//
//  main.swift
//  homework1
//
//  Created by Larisa on 26.12.2021.
//

import Foundation

/*
 1. Описать класс Car c общими свойствами автомобилей и пустым методом действия по аналогии с прошлым заданием.
 2. Описать пару его наследников trunkCar и sportСar. Подумать, какими отличительными свойствами обладают эти автомобили. Описать в каждом наследнике специфичные для него свойства.
 3. Взять из прошлого урока enum с действиями над автомобилем. Подумать, какие особенные действия имеет trunkCar, а какие – sportCar. Добавить эти действия в перечисление.
 4. В каждом подклассе переопределить метод действия с автомобилем в соответствии с его классом.
 5. Создать несколько объектов каждого класса. Применить к ним различные действия.
 6. Вывести значения свойств экземпляров в консоль.
 */
enum EngineStatus {
    case start
    case stop
}

enum WindowStatus {
    case open
    case close
}

enum CargoStatus {
    case take
    case get
}

enum CarColor: String {
    case white = "white"
    case yellow = "yellow"
    case blue = "blue"
    case black = "black"
    case purple = "purple"
    case green = "green"
    case red = "red"
}

enum DoorStatus {
    case open
    case close
}

enum WheelColor: String {
    case white = "white"
    case yellow = "yellow"
    case blue = "blue"
    case black = "black"
    case purple = "purple"
    case green = "green"
    case red = "red"
}

enum CargoColor: String {
    case white = "white"
    case yellow = "yellow"
    case blue = "blue"
    case black = "black"
    case purple = "purple"
    case green = "green"
    case red = "red"
}

class Car {
    let brand: String
    let model: String
    let year: Int
    
    var whichYear: String {
        return "Автомобиль собран в \(year) году"
    }
    
    var trunkVolume: Double {
        willSet {
            print("Багажник заполнен на \(newValue) процентов")
        }
    }
    
    var bodySpace: Double {
        willSet {
            print("Кузов заполнен на \(newValue) процентов")
        }
    }
    
    var color: CarColor {
        willSet {
            print("Цвет автомобиля изменен на \(newValue)")
        }
    }
    
    var engineStatus: EngineStatus {
        willSet {
            newValue == EngineStatus.start ? print("Мотор заведен") : print("Мотор заглушен")
        }
    }
    
    var windowStatus: WindowStatus
    
    func changeWindowStatus() {
        windowStatus == WindowStatus.open ? print("Закрой окно") : print("Окно закрыто")
    }
    
    var сargoStatus: CargoStatus {
        willSet {
            newValue == CargoStatus.take ? print("Груз погружен") : print("Груз выгружен")
        }
    }
    
    init(brand: String,
         model: String,
         year: Int,
         trunkVolume: Double,
         bodySpace: Double,
         color: CarColor,
         engineStatus: EngineStatus,
         windowStatus: WindowStatus,
         сargoStatus: CargoStatus) {
        self.brand = brand
        self.model = model
        self.year = year
        self.trunkVolume = trunkVolume
        self.bodySpace = bodySpace
        self.color = color
        self.engineStatus = engineStatus
        self.windowStatus = windowStatus
        self.сargoStatus = сargoStatus
        self.changeWindowStatus()
    }
}

final class TrunkCar: Car {
    
    var tonnage: Int
    var cargoColor: CargoColor
    
    init(tonnage: Int,
         cargoColor: CargoColor,
         brand: String,
         model: String,
         year: Int,
         trunkVolume: Double,
         bodySpace: Double,
         color: CarColor,
         engineStatus: EngineStatus,
         windowStatus: WindowStatus,
         сargoStatus: CargoStatus) {
        
        self.tonnage = tonnage
        self.cargoColor = cargoColor
        
        super.init(brand: brand,
                   model: model,
                   year: year,
                   trunkVolume: trunkVolume,
                   bodySpace: bodySpace,
                   color: color,
                   engineStatus: engineStatus,
                   windowStatus: windowStatus,
                   сargoStatus: сargoStatus)
    }
}

final class SportCar: Car {
    
    var maxSpeed: Double
    var wheelColor: WheelColor
    
    init(maxSpeed: Double,
         wheelColor: WheelColor,
         brand: String,
         model: String,
         year: Int,
         trunkVolume: Double,
         bodySpace: Double,
         color: CarColor,
         engineStatus: EngineStatus,
         windowStatus: WindowStatus,
         сargoStatus: CargoStatus) {
        
        self.maxSpeed = maxSpeed
        self.wheelColor = wheelColor
        
        super.init(brand: brand,
                   model: model,
                   year: year,
                   trunkVolume: trunkVolume,
                   bodySpace: bodySpace,
                   color: color,
                   engineStatus: engineStatus,
                   windowStatus: windowStatus,
                   сargoStatus: сargoStatus)
    }
}


let carOne = Car(brand: "Chevrolet",
                 model: "Cruze",
                 year: 2021,
                 trunkVolume: 394.5,
                 bodySpace: 34.6,
                 color: CarColor.yellow,
                 engineStatus: EngineStatus.stop,
                 windowStatus: WindowStatus.open,
                 сargoStatus: CargoStatus.take)

let trunkCarOne = TrunkCar(tonnage: 100000,
                           cargoColor: CargoColor.green,
                           brand: "Chevrolet",
                           model: "Aveo", year: 1999,
                           trunkVolume: 4654.7,
                           bodySpace: 67.7,
                           color: CarColor.purple,
                           engineStatus: EngineStatus.start,
                           windowStatus: WindowStatus.close,
                           сargoStatus: CargoStatus.get)

let sportCarOne = SportCar(maxSpeed: 245.6,
                           wheelColor: WheelColor.purple,
                           brand: "BMW",
                           model: "X6",
                           year: 2021,
                           trunkVolume: 45,
                           bodySpace: 56.9,
                           color: CarColor.black,
                           engineStatus: EngineStatus.start,
                           windowStatus: WindowStatus.close,
                           сargoStatus: CargoStatus.get)

carOne.сargoStatus = .get
carOne.windowStatus = .close
carOne.trunkVolume = 500
trunkCarOne.сargoStatus = .take
trunkCarOne.windowStatus = .open
sportCarOne.wheelColor = .black
sportCarOne.engineStatus = .stop

print("""
        Параметры автомобиля 1:
        - \(carOne.brand) \(carOne.model),
        - выпущен в: \(carOne.year) году,
        - объем багажника: \(carOne.trunkVolume),
        - объем кузова: \(carOne.bodySpace),
        - цвет \(carOne.color),
        - Состояние мотора: \(carOne.engineStatus)
        - Состояние окон: \(carOne.windowStatus)
        - Наполненность кузова: \(carOne.сargoStatus)
        """)

print("""
        Параметры спортивного автомобиля 1:
        - \(sportCarOne.brand) \(sportCarOne.model),
        - выпущен в: \(sportCarOne.year) году,
        - объем багажника: \(sportCarOne.trunkVolume),
        - объем кузова: \(sportCarOne.bodySpace),
        - цвет \(sportCarOne.color),
        - Состояние мотора: \(sportCarOne.engineStatus)
        - Состояние окон: \(sportCarOne.windowStatus)
        - Наполненность кузова: \(sportCarOne.сargoStatus)
        - Максимальная скорость: \(sportCarOne.wheelColor)
        - Цвет колес: \(sportCarOne.wheelColor)
        """)

print("""
        Параметры грузового автомобиля 1:
        - \(trunkCarOne.brand) \(trunkCarOne.model),
        - выпущен в: \(trunkCarOne.year) году,
        - объем багажника: \(trunkCarOne.trunkVolume),
        - объем кузова: \(trunkCarOne.bodySpace),
        - цвет \(trunkCarOne.color),
        - Состояние мотора: \(trunkCarOne.engineStatus)
        - Состояние окон: \(trunkCarOne.windowStatus)
        - Наполненность кузова: \(trunkCarOne.сargoStatus)
        - Вес: \(trunkCarOne.tonnage)
        - Цвет кузова: \(trunkCarOne.cargoColor)
        """)
