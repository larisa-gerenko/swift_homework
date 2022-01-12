//
//  main.swift
//  homework1
//
//  Created by Larisa on 26.12.2021.
//

import Foundation

/* 1. Описать несколько структур – любой легковой автомобиль SportCar и любой грузовик TrunkCar.
2. Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли двигатель, открыты ли окна, заполненный объем багажника.
3. Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.
4. Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия.
5. Инициализировать несколько экземпляров структур. Применить к ним различные действия.
6. Вывести значения свойств экземпляров в консоль. */

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

struct SportCar {
    let brand: String
    let model: String
    let year: Int
    
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
    
    var windowStatus: WindowStatus {
        willSet {
            newValue == WindowStatus.open ? print("Окно открыто") : print("Окно закрыто")
        }
    }
    
    var сargoStatus: CargoStatus {
        willSet {
            newValue == CargoStatus.take ? print("Груз погружен") : print("Груз выгружен")
        }
    }

    var doorStatus: DoorStatus {
        willSet {
            newValue == .open ? print("Дверь открыта") : print("Дверь закрыта")
        }
    }
}

struct TrunkCar {
    let brand: String
    let model: String
    let year: Int
    
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
    
    var windowStatus: WindowStatus {
        willSet {
            newValue == .open ? print("Окно открыто") : print("Окно закрыто")
        }
    }
    
    var сargoStatus: CargoStatus {
        willSet {
            newValue == .take ? print("Груз погружен") : print("Груз выгружен")
        }
    }

    var doorStatus: DoorStatus {
        willSet {
            newValue == .open ? print("Дверь открыта") : print("Дверь закрыта")
        }
    }
}

var carOne = SportCar(brand: "Chevrolet",
                      model: "Camaro",
                      year: 2021,
                      trunkVolume: 207.0,
                      bodySpace: 3569.0,
                      color: CarColor.red,
                      engineStatus: EngineStatus.start,
                      windowStatus: WindowStatus.open,
                      сargoStatus: CargoStatus.take,
                      doorStatus: DoorStatus.open
)

var carTwo = SportCar(brand: "BMW",
                      model: "Mille",
                      year: 2020,
                      trunkVolume: 307.0,
                      bodySpace: 1459.0,
                      color: CarColor.yellow,
                      engineStatus: EngineStatus.start,
                      windowStatus: WindowStatus.open,
                      сargoStatus: CargoStatus.take,
                      doorStatus: DoorStatus.open
)

var trunkOne = TrunkCar(brand: "Mercedes",
                        model: "Actros",
                        year: 1999,
                        trunkVolume: 284.7,
                        bodySpace: 3464.7,
                        color: CarColor.black,
                        engineStatus: EngineStatus.start,
                        windowStatus: WindowStatus.open,
                        сargoStatus: CargoStatus.get,
                        doorStatus: DoorStatus.open
)

var trunkTwo = TrunkCar(brand: "Mercedes",
                        model: "Sprinter",
                        year: 2019,
                        trunkVolume: 444.0,
                        bodySpace: 10064.60,
                        color: CarColor.green,
                        engineStatus: EngineStatus.stop,
                        windowStatus: WindowStatus.close,
                        сargoStatus: CargoStatus.take,
                        doorStatus: DoorStatus.close
)

carOne.doorStatus = .close
carOne.color = CarColor.yellow
carOne.doorStatus = DoorStatus.open
carOne.bodySpace = 34
carOne.windowStatus = WindowStatus.open

carTwo.doorStatus = .close
carTwo.color = CarColor.yellow
carTwo.doorStatus = DoorStatus.open
carTwo.bodySpace = 34
carTwo.windowStatus = WindowStatus.open

print ("""
        Параметры автомобиля 1:
        - \(carOne.brand) \(carOne.model),
        - выпущен в: \(carOne.year) году,
        - объем багажника: \(carOne.trunkVolume),
        - объем кузова: \(carOne.bodySpace),
        - цвет \(carOne.color),
        - Состояние мотора: \(carOne.engineStatus)
        - Состояние окон: \(carOne.windowStatus)
        - Наполненность кузова: \(carOne.сargoStatus)
        - Состояние дверей: \(carOne.doorStatus)
        """)

print ("""
        Параметры автомобиля 2:
        - \(carTwo.brand) \(carTwo.model),
        - выпущен в: \(carTwo.year) году,
        - объем багажника: \(carTwo.trunkVolume),
        - объем кузова: \(carTwo.bodySpace),
        - цвет \(carTwo.color),
        - Состояние мотора: \(carTwo.engineStatus)
        - Состояние окон: \(carTwo.windowStatus)
        - Наполненность кузова: \(carTwo.сargoStatus)
        - Состояние дверей: \(carTwo.doorStatus)
        """)

print ("""
        Параметры грузовика 1:
        - \(trunkOne.brand) \(trunkOne.model),
        - выпущен в: \(trunkOne.year) году,
        - объем багажника: \(trunkOne.trunkVolume),
        - объем кузова: \(trunkOne.bodySpace),
        - цвет \(trunkOne.color),
        - Состояние мотора: \(trunkOne.engineStatus)
        - Состояние окон: \(trunkOne.windowStatus)
        - Наполненность кузова: \(trunkOne.сargoStatus)
        - Состояние дверей: \(trunkOne.doorStatus)
        """)

print ("""
        Параметры автомобиля 2:
        - \(trunkTwo.brand) \(trunkTwo.model),
        - выпущен в: \(trunkTwo.year) году,
        - объем багажника: \(trunkTwo.trunkVolume),
        - объем кузова: \(trunkTwo.bodySpace),
        - цвет \(trunkTwo.color),
        - Состояние мотора: \(trunkTwo.engineStatus)
        - Состояние окон: \(trunkTwo.windowStatus)
        - Наполненность кузова: \(trunkTwo.сargoStatus)
        - Состояние дверей: \(trunkTwo.doorStatus)
        """)
















